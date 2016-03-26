package com.stock.service.exception;

@SuppressWarnings("serial")
public class ProductAlreadyExistsException extends RuntimeException {

    public ProductAlreadyExistsException(final String message) {
        super(message);
    }
}
