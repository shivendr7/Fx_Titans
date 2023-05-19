package com.bharatpe.fx.controller;

import com.bharatpe.fx.entitiy.Beneficiary;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;


@Controller
@Slf4j
public class Index {



    @GetMapping(value = "/")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        log.info("Loading index page");
        return modelAndView;
    }



    @PostMapping(value = "initiateTransaction")
    public ModelAndView initiateTransaction() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("processingTransaction");
        log.info("Loading transaction details page");
        return modelAndView;
    }


}

