package com.bharatpe.fx.utilities;

import com.bharatpe.fx.utilities.models.CurrencyApiResponse;
import com.bharatpe.fx.utilities.models.CurrencyValue;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Currency;
import java.util.List;


public class CurrencyRepository {

    public List<CurrencyValue> getCurrencyRates(String baseCurrency, String... currenciesTo) {
        RestTemplate restTemplate = new RestTemplate();
        String base = "base="+baseCurrency;
        String symbols = "symbols=";
        for (String currency: currenciesTo) {
            symbols += currency+"%";
        }
        HttpHeaders headers = new HttpHeaders();
        headers.set("api-key", "3W81YWo8kR7TT112wRPFovDX8xv8Gfww");
        HttpEntity<String> entity = new HttpEntity<>("body", headers);
        String currencyRates = restTemplate.getForObject("https://api.apilayer.com/exchangerates_data/latest?${symbols}&${base}", String.class, entity);
        ObjectMapper objectMapper = new ObjectMapper();
        CurrencyApiResponse currencyApiResponse;
        List<CurrencyValue> currencyAndRates = new ArrayList<>();
        try {
            currencyApiResponse = objectMapper.readValue(currencyRates, CurrencyApiResponse.class);
            JSONObject object = new JSONObject(currencyApiResponse.rates);
            while (object.keys().next() != null) {
                String k = object.keys().next();
                currencyAndRates.add(new CurrencyValue("INR",k, object.getString(k)));
            }
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        return currencyAndRates;
    }

}
