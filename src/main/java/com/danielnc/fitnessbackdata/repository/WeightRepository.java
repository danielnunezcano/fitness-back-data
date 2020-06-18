package com.danielnc.fitnessbackdata.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.danielnc.fitnessbackdata.dao.Weight;

@Repository("weightRepository")
public interface WeightRepository extends JpaRepository<Weight, Long> {
	
}