package ru.aroundme.countries.service;

import ru.aroundme.countries.domain.Country;

import java.util.List;

public interface CountryService {

    List<Country> allCountries();

    Country countryByCode(String code);

    Country createCountry(Country country);

    Country updateCountryByCode(String code, Country country);
}
