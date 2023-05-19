package com.bharatpe.fx.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
public class CustomerController {

    @GetMapping("/customer")
    public ModelAndView getAllCustomer(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("customer");
        log.info("Loading customer details page");
        return modelAndView;
    }


}
