package com.bharatpe.fx.controller;

import com.bharatpe.fx.entitiy.Beneficiary;
import com.bharatpe.fx.utilities.CurrencyRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@Slf4j
public class Index {

    @GetMapping(value = "/")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("customer");
        log.info("Loading customer page");
        return modelAndView;
    }

    @RequestMapping(value = "addBene")
    public ModelAndView fillInTransactionDetails(ModelMap modelMap) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("transactionDetails");
        log.info("Loading transaction details page");
//        CurrencyRepository repo = new CurrencyRepository();
//        Object currates = repo.getCurrencyRates("INR", "EUR", "USD", "GBP");
//        modelMap.addAttribute("currencies", currates);
//        log.info(currates.toString());
        return modelAndView;
    }

    @RequestMapping(value = "addCostumer")
    public ModelAndView addCostumer() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("addCostumer");
        log.info("Loading transaction details page");
        return modelAndView;
    }

    @RequestMapping(value = "initiateTransaction")
    public ModelAndView initiateTransaction() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("processingTransaction");
        log.info("Loading transaction details page");
        return modelAndView;
    }


}

