package ru.aroundme.countries.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import ru.aroundme.countries.domain.CountryResponse;
import ru.aroundme.countries.domain.CreateCountryRequest;
import ru.aroundme.countries.domain.UpdateCountryNameRequest;
import ru.aroundme.countries.service.CountryService;

import java.util.List;

@RestController
@RequestMapping("api/country")
public class CountryController {

    private final CountryService countryService;

    public CountryController(CountryService countryService) {
        this.countryService = countryService;
    }

    @GetMapping("/all")
    public List<CountryResponse> allCountries() {
        return countryService.allCountries();
    }

    @GetMapping("/{code}")
    public CountryResponse getCountryByCode(@PathVariable String code) {
        return countryService.countryByCode(code);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public CountryResponse createCountry(@RequestBody CreateCountryRequest countryRequest) {
        return countryService.createCountry(countryRequest);
    }

    @PatchMapping("/{code}")
    public CountryResponse updateCountryName(@PathVariable String code, @RequestBody UpdateCountryNameRequest countryNameRequest) {
        return countryService.updateCountryNameByCode(code, countryNameRequest);
    }
}
