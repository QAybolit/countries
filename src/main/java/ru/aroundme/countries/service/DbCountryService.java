package ru.aroundme.countries.service;

import lombok.NonNull;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.aroundme.countries.data.CountryEntity;
import ru.aroundme.countries.data.repository.CountryRepository;
import ru.aroundme.countries.domain.CountryResponse;
import ru.aroundme.countries.domain.CreateCountryRequest;
import ru.aroundme.countries.domain.UpdateCountryNameRequest;
import ru.aroundme.countries.exception.CountryAlreadyExistsException;
import ru.aroundme.countries.exception.CountryNotFoundException;

import java.util.List;

@Service
public class DbCountryService implements CountryService {

    private final CountryRepository countryRepository;

    public DbCountryService(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }

    @Override
    public List<CountryResponse> allCountries() {
        return countryRepository.findAll()
                .stream()
                .map(CountryResponse::fromEntity)
                .toList();
    }

    @Override
    public CountryResponse countryByCode(String code) {
        return countryRepository.findByCountryCode(code)
                .map(CountryResponse::fromEntity)
                .orElseThrow(() -> new CountryNotFoundException("Country with code " + code + " not found"));
    }

    @Transactional
    @Override
    public @NonNull CountryResponse createCountry(CreateCountryRequest countryRequest) {
        CountryResponse check = countryRepository.findByCountryCode(countryRequest.countryCode()).map(CountryResponse::fromEntity).orElse(null);
        if (check == null) {
            CountryEntity countryEntity = new CountryEntity();
            countryEntity.setCountryName(countryRequest.countryName());
            countryEntity.setCountryCode(countryRequest.countryCode());
            countryEntity.setDescription(countryRequest.description() != null ? countryRequest.description() : "");
            return CountryResponse.fromEntity(countryRepository.save(countryEntity));
        } else {
            throw new CountryAlreadyExistsException("Country with code " + countryRequest.countryCode() + " already exists");
        }
    }

    @Transactional
    @Override
    public CountryResponse updateCountryNameByCode(String code, UpdateCountryNameRequest countryNameRequest) {
        return countryRepository.findByCountryCode(code)
                .map(entity -> {
                    if (countryNameRequest.countryName() != null)
                        entity.setCountryName(countryNameRequest.countryName());
                    return CountryResponse.fromEntity(countryRepository.save(entity));
                })
                .orElseThrow(() -> new CountryNotFoundException("Country with code " + code + " not found"));
    }
}
