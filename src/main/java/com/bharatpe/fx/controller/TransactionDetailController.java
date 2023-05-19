package com.bharatpe.fx.controller;

import com.bharatpe.fx.entitiy.TransactionEntity;
import com.bharatpe.fx.service.TransactionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Slf4j
public class TransactionDetailController {

    private final TransactionService transactionService;

    public TransactionDetailController(TransactionService transactionService) {
        this.transactionService = transactionService;
    }

    @PostMapping("/transaction")
    public ResponseEntity<TransactionEntity> saveTransaction(@RequestBody TransactionEntity newTransaction){
        TransactionEntity transactionEntity = transactionService.saveTransaction(newTransaction);
        return ResponseEntity.ok(transactionEntity);
    }

    @GetMapping("/transaction")
    public ModelAndView getTransaction(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("transactionList");
        log.info("Loading customer details page");
        return modelAndView;
    }
}
