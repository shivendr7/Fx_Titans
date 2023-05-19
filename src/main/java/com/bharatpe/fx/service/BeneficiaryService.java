package com.bharatpe.fx.service;

import com.bharatpe.fx.entitiy.Beneficiary;
import com.bharatpe.fx.repository.BeneficiaryRepository;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Optional;

@Service
public class BeneficiaryService {

    private final BeneficiaryRepository beneficiaryRepository;

    public BeneficiaryService(BeneficiaryRepository beneficiaryRepository) {
        this.beneficiaryRepository = beneficiaryRepository;
    }

    public Beneficiary saveBene(Beneficiary newBeneficiary) {
       return beneficiaryRepository.save(newBeneficiary);
    }

    public Beneficiary saveBene(Map<String,String> beneData) {
        Beneficiary beneficiary = new Beneficiary(beneData.get("beneficiary_account_number"),beneData.get("confirm_beneficiary_account_number"),beneData.get("ifsc_code"),beneData.get("bank_name"), beneData.get("branch_name"));
        return beneficiaryRepository.save(beneficiary);
    }

    public Beneficiary getBene(Long beneId) {
        Optional<Beneficiary> byId = beneficiaryRepository.findById(beneId);
        return byId.orElse(null);
    }
}
