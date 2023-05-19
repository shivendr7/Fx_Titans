package com.bharatpe.fx.service;

import com.bharatpe.fx.entitiy.TransactionEntity;
import com.bharatpe.fx.repository.TransactionRepository;
import org.springframework.stereotype.Service;

@Service
public class TransactionService {

    private final TransactionRepository transactionRepository;

    public TransactionService(TransactionRepository transactionRepository) {
        this.transactionRepository = transactionRepository;
    }

    public TransactionEntity saveTransaction(TransactionEntity txn){
        return transactionRepository.save(txn);
    }


}
