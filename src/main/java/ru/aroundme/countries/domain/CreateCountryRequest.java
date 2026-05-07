package ru.aroundme.countries.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public record CreateCountryRequest(
        @JsonProperty("country_name")
        String countryName,
        @JsonProperty("country_code")
        String countryCode,
        @JsonProperty("description")
        String description
) {
}
