package com.bharatpe.fx.entitiy;


import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "beneficiary")
@Getter
@Setter
@RequiredArgsConstructor
public class Beneficiary {

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Long id;

    @Column(name = "account_no")
    private String accountNo;

    @Column(name = "confirm_account_no")
    private String confirmAccountNo;

    @Column(name = "ifsc_code")
    private String IFSCode;

    @Column(name = "bank")
    private String bank;

    @Column(name = "branch_name")
    private String branchName;

    public Beneficiary(String accountNo, String confirmAccountNo, String ifsCode, String bank, String branchName) {
        this.accountNo = accountNo;
        this.confirmAccountNo = confirmAccountNo;
        this.IFSCode = ifsCode;
        this.bank = bank;
        this.branchName = branchName;
    }
}
