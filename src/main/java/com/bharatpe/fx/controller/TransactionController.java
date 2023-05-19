package com.bharatpe.fx.controller;

import com.bharatpe.fx.entitiy.TransactionEntity;
import com.bharatpe.fx.service.TransactionService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TransactionController {

    private final TransactionService transactionService;

    public TransactionController(TransactionService transactionService) {
        this.transactionService = transactionService;
    }

    @GetMapping("/txn")
    public ModelAndView getTransactionList(){
        List<TransactionEntity> transactionList = transactionService.getTransactionList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("transactionList");
        modelAndView.addObject("transactionList", transactionList);
        return modelAndView;
    }

    @GetMapping("/txn/{id}")
    public ModelAndView getTransaction(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("transaction");
        return modelAndView;
    }

}
