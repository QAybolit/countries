package ru.aroundme.countries.service;

import org.springframework.stereotype.Component;
import ru.aroundme.countries.domain.Country;

import java.util.List;

@Component
public class DbCountryService implements CountryService {

    @Override
    public List<Country> allCountries() {
        return List.of(
                new Country(
                        "Russia",
                        "RU",
                        "Это Россия"
                ),
                new Country(
                        "Georgia",
                        "GE",
                        "Это Грузия"
                )
        );
    }

    @Override
    public Country countryByName(String name) {
        return null;
    }
}
