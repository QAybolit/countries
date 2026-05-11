package ru.aroundme.countries.service;

import ru.aroundme.countries.domain.CountryResponse;
import ru.aroundme.countries.domain.CreateCountryRequest;
import ru.aroundme.countries.domain.UpdateCountryNameRequest;

import java.util.List;

public interface CountryService {

    List<CountryResponse> allCountries();

    CountryResponse countryByCode(String code);

    CountryResponse createCountry(CreateCountryRequest countryRequest);

    CountryResponse updateCountryNameByCode(String code, UpdateCountryNameRequest countryNameRequest);
}
