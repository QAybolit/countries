package ru.aroundme.countries.service;

import lombok.NonNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.aroundme.countries.data.CountryEntity;
import ru.aroundme.countries.data.repository.CountryRepository;
import ru.aroundme.countries.domain.Country;

import java.util.List;

@Component
public class DbCountryService implements CountryService {

    private final CountryRepository countryRepository;

    @Autowired
    public DbCountryService(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }

    @Override
    public List<Country> allCountries() {
        return countryRepository.findAll()
                .stream()
                .map(Country::fromEntity)
                .toList();
    }

    @Override
    public Country countryByCode(String code) {
        return countryRepository.findByCountryCode(code)
                .stream()
                .map(Country::fromEntity)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Country with code " + code + " not found"));
    }

    @Transactional
    @Override
    public @NonNull Country createCountry(Country country) {
        Country check = countryRepository.findByCountryCode(country.countryCode()).map(Country::fromEntity).orElse(null);
        if (check == null) {
            CountryEntity countryEntity = new CountryEntity();
            countryEntity.setCountryName(country.countryName());
            countryEntity.setCountryCode(country.countryCode());
            countryEntity.setDescription(country.description() != null ? country.description() : "");
            return Country.fromEntity(countryRepository.save(countryEntity));
        } else {
            throw new IllegalStateException("Country with code " + country.countryCode() + " already exists");
        }
    }

    @Transactional
    @Override
    public Country updateCountryByCode(String code, Country country) {
        return countryRepository.findByCountryCode(code)
                .map(entity -> {
                    if (country.countryName() != null) entity.setCountryName(country.countryName());
                    if (country.description() != null) entity.setDescription(country.description());
                    return Country.fromEntity(countryRepository.save(entity));
                })
                .orElseThrow(() -> new IllegalArgumentException("Country with code " + code + " not found"));
    }
}
