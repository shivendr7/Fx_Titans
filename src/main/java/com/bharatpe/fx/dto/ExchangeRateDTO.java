package com.bharatpe.fx.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.Map;

@Getter
@Setter
public class ExchangeRateDTO {

    private String baseCurrency;
    private String date;
    Map<String,Double> rates;
}
