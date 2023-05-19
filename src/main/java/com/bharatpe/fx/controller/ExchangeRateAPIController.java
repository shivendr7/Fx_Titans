package com.bharatpe.fx.controller;

import com.bharatpe.fx.dto.ExchangeRateDTO;
import com.bharatpe.fx.service.CurrencyExchangeRateService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
public class ExchangeRateAPIController {

    private final CurrencyExchangeRateService currencyExchangeRateService;

    public ExchangeRateAPIController(CurrencyExchangeRateService currencyExchangeRateService) {
        this.currencyExchangeRateService = currencyExchangeRateService;
    }

    @GetMapping("/rate")
    public ResponseEntity<ExchangeRateDTO> getExchangerate(@RequestParam String baseCurrency, @RequestParam String toCurrency){
        ExchangeRateDTO exchangeRate = currencyExchangeRateService.getExchangeRate(baseCurrency, toCurrency);
        return ResponseEntity.ok(exchangeRate);

    }

}
