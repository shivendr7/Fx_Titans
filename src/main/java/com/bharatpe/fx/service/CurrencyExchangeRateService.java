package com.bharatpe.fx.service;

import com.bharatpe.fx.dto.ExchangeRateDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@Service
@Slf4j
public class CurrencyExchangeRateService {

    @Value("${rate.exchange.api.url}")
    private String exchangeRateAPIURL;

    @Value("${rate.exchange.api.key}")
    private String exchangeRateAPIKey;
    private final RestTemplate restTemplate;

    public CurrencyExchangeRateService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public ExchangeRateDTO getExchangeRate(String baseCurrency, String toCurrency){
        if(ObjectUtils.isEmpty(baseCurrency)){
            baseCurrency = "INR";
        }
        ExchangeRateDTO exchangeRateDTO = new ExchangeRateDTO();
        try {
            HttpHeaders headers = new HttpHeaders();
            headers.set("apikey",exchangeRateAPIKey);
            HttpEntity<Object> entity = new HttpEntity<>(headers);
            String url = String.format(exchangeRateAPIURL, toCurrency, baseCurrency);
            log.info("exchange rate api url::{}", url);
            ResponseEntity<Map> response = restTemplate.exchange(url, HttpMethod.GET, entity, Map.class);
            Map<String, Object> body = response.getBody();
            exchangeRateDTO.setBaseCurrency(baseCurrency);
            Map<String,Double> rates = (Map<String, Double>) body.get("rates");
            exchangeRateDTO.setRates(rates);
        }catch (Exception e){
            log.error("got error while hitting exchange rate::{} ", e.getMessage(), e);
        }
        return exchangeRateDTO;

    }

}
