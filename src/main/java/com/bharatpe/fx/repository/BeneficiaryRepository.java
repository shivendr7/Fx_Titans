package com.bharatpe.fx.repository;

import com.bharatpe.fx.entitiy.Beneficiary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BeneficiaryRepository extends JpaRepository<Beneficiary,Long> {

}
