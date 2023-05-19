package com.bharatpe.fx.entitiy;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Table(name = "transaction")
@Entity
@Getter
@Setter
public class TransactionEntity {

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Long id;

    @Column(name = "customer_id")
    private Long customerId;

    @Column(name = "bene_id")
    private Long beneId;

    @Column(name = "destination_amount")
    private Double destinationAmount;

    @Column(name = "source_currency")
    private String sourceCurrency;

    @Column(name = "instant_transafer")
    private boolean instantTransfer;

    @Column(name = "user_acceptance_rate")
    private Double userAcceptanceRate;

    @Column(name = "destination_currency")
    private String destinationCurrency;
}
