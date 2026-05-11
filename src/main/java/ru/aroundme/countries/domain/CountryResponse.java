package ru.aroundme.countries.domain;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.NonNull;
import ru.aroundme.countries.data.CountryEntity;

import java.util.UUID;

public record CountryResponse(
        @JsonProperty("id")
        UUID id,
        @JsonProperty("country_name")
        String countryName,
        @JsonProperty("country_code")
        String countryCode,
        @JsonProperty("description")
        String description
) {

    public static @NonNull CountryResponse fromEntity(@NonNull CountryEntity entity) {
        return new CountryResponse(
                entity.getId(),
                entity.getCountryName(),
                entity.getCountryCode(),
                entity.getDescription() != null ? entity.getDescription() : ""
        );
    }
}
