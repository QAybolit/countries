package ru.aroundme.countries.data.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.aroundme.countries.data.CountryEntity;

import java.util.Optional;
import java.util.UUID;

public interface CountryRepository extends JpaRepository<CountryEntity, UUID> {

    Optional<CountryEntity> findByCountryCode(String code);
}
