package com.contact.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.contact.entity.ContactEntity;

public interface ContactDtlsRepository 
			extends JpaRepository<ContactEntity, Integer> {

}
