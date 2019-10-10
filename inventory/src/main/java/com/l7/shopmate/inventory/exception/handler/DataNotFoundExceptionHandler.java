package com.l7.shopmate.inventory.exception.handler;

import com.l7.shopmate.inventory.model.ErrorResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Date;

@RestController //since it returns response back
@ControllerAdvice //for making this class applicable for all controllers
public class DataNotFoundExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(Exception.class)
    public  ResponseEntity<Object> handleAllException(Exception ex, WebRequest request)  {

        ErrorResponse errorResponse = new ErrorResponse(new Date(), ex.getMessage(), request.getDescription(false));
        return new ResponseEntity(errorResponse, HttpStatus.INTERNAL_SERVER_ERROR);

    }

}
