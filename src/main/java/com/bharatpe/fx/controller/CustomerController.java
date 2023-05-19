package com.bharatpe.fx.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/customer")
@Slf4j
public class CustomerController {

    @GetMapping
    public ResponseEntity<?> getAllCustomer(){
        return null;
    }


}
