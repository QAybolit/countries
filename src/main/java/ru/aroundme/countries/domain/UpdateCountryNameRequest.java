package ru.aroundme.countries.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public record UpdateCountryNameRequest(
        @JsonProperty("country_name")
        String countryName
) {
}
