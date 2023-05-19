package com.bharatpe.fx.controller;

import com.bharatpe.fx.dto.ExchangeRateDTO;
import com.bharatpe.fx.entitiy.Beneficiary;
import com.bharatpe.fx.service.BeneficiaryService;
import com.bharatpe.fx.service.CurrencyExchangeRateService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@Slf4j
public class BeneficiaryController {


    private final BeneficiaryService beneficiaryService;
    private final CurrencyExchangeRateService currencyExchangeRateService;

    public BeneficiaryController(BeneficiaryService beneficiaryService, CurrencyExchangeRateService currencyExchangeRateService) {
        this.beneficiaryService = beneficiaryService;
        this.currencyExchangeRateService = currencyExchangeRateService;
    }

    @GetMapping("/newBeneForm")
    public ModelAndView getAddBeneForm(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("addBene");
        log.info("Loading add bene details page");
        return modelAndView;
    }

    @PostMapping(value = "addBene",consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public ModelAndView fillInTransactionDetails(@RequestParam Map<String, String> beneDetails) {
        beneficiaryService.saveBene(beneDetails);

        String beneAccountCurrency = beneDetails.get("beneficiary_account_currency");
        ExchangeRateDTO exchangeRate = currencyExchangeRateService.getExchangeRate("INR", beneAccountCurrency);
        Map<String, Double> rates = exchangeRate.getRates();
        beneDetails.put("exchange_rate", String.valueOf(rates.get(beneAccountCurrency)));

        ModelAndView modelAndView = new ModelAndView();
        //modelAndView.setViewName("transactionDetails");
        modelAndView.setViewName("sendMoney");
        modelAndView.addObject("beneDetails", beneDetails);
        log.info("Loading send money  page");
        return modelAndView;
    }

    /*@PostMapping(value = "addCostumer",consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public ModelAndView addCostumer(@RequestParam Map<String, String> formData) {
//        beneficiaryService.saveBene(formData);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        log.info("Loading transaction details page");
        return modelAndView;
    }*/



    @GetMapping("/{beneId}")
    ResponseEntity<Beneficiary> getBene(@PathVariable Long beneId){
        Beneficiary beneficiary = beneficiaryService.getBene(beneId);
        return ResponseEntity.ok(beneficiary);
    }
}
