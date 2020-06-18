package com.danielnc.fitnessbackdata.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.danielnc.fitnessbackdata.dao.Image;

@Repository("imageRepository")
public interface ImageRepository extends JpaRepository<Image, Long> {
	
}