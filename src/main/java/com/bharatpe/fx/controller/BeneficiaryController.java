package com.bharatpe.fx.controller;

import com.bharatpe.fx.entitiy.Beneficiary;
import com.bharatpe.fx.service.BeneficiaryService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@RestController
@Slf4j
public class BeneficiaryController {


    private final BeneficiaryService beneficiaryService;

    public BeneficiaryController(BeneficiaryService beneficiaryService) {
        this.beneficiaryService = beneficiaryService;
    }

    @PostMapping(value = "addBene",consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public ModelAndView fillInTransactionDetails(@RequestParam Map<String, String> formData) {
        beneficiaryService.saveBene(formData);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("transactionDetails");
        log.info("Loading transaction details page");
        return modelAndView;
    }



    @GetMapping("/{beneId}")
    ResponseEntity<Beneficiary> getBene(@PathVariable Long beneId){
        Beneficiary beneficiary = beneficiaryService.getBene(beneId);
        return ResponseEntity.ok(beneficiary);
    }
}
