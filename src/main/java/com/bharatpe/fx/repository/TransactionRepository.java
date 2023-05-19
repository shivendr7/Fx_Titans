package com.bharatpe.fx.repository;


import com.bharatpe.fx.entitiy.TransactionEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface TransactionRepository extends JpaRepository<TransactionEntity, Long> {
}
