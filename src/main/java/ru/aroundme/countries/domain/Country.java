package ru.aroundme.countries.domain;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.NonNull;
import ru.aroundme.countries.data.CountryEntity;

import java.util.UUID;

public record Country(
        @JsonProperty("id")
        UUID id,
        @JsonProperty("country_name")
        String countryName,
        @JsonProperty("country_code")
        String countryCode,
        @JsonProperty("description")
        String description
) {

    public static @NonNull Country fromEntity(@NonNull CountryEntity entity) {
        return new Country(
                entity.getId(),
                entity.getCountryName(),
                entity.getCountryCode(),
                entity.getDescription() != null ? entity.getDescription() : ""
        );
    }
}
