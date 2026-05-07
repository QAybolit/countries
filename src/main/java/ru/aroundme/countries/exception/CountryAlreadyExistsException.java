package ru.aroundme.countries.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.CONFLICT)
public class CountryAlreadyExistsException extends RuntimeException {

    public CountryAlreadyExistsException(String message) {
        super(message);
    }
}
