package com.bharatpe.fx.controller;

import com.bharatpe.fx.entitiy.TransactionEntity;
import com.bharatpe.fx.service.TransactionService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController("/transaction")
public class TransactionDetailController {

    private final TransactionService transactionService;

    public TransactionDetailController(TransactionService transactionService) {
        this.transactionService = transactionService;
    }

    @PostMapping
    public ResponseEntity<TransactionEntity> saveTransaction(@RequestBody TransactionEntity newTransaction){
        TransactionEntity transactionEntity = transactionService.saveTransaction(newTransaction);
        return ResponseEntity.ok(transactionEntity);
    }
}
