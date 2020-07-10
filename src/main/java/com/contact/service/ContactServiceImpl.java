package com.contact.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.contact.model.Contact;
import com.contact.entity.ContactEntity;
import com.contact.repo.ContactDtlsRepository;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDtlsRepository contactRepo;

	@Override
	public boolean saveContact(Contact c) {
		ContactEntity entity = new ContactEntity();
		/*if(c.getContactId()!=null) {
			Optional<ContactEntity> findById = contactRepo.findById(c.getContactId());
			entity = findById.get();
		}*/
		BeanUtils.copyProperties(c, entity);
		ContactEntity savedEntity = contactRepo.save(entity);
		return savedEntity.getContactId() != null;
	}

	@Override
	public List<Contact> getAllContacts() {
		List<ContactEntity> entities = contactRepo.findAll();
		
		
		//legacy approach
		/*List<Contact> contacts = new ArrayList<Contact>();
		for(ContactEntity entity : entities) {
			Contact contact = new Contact();
			BeanUtils.copyProperties(entity, contact);
			contacts.add(contact);
		}*/
		
		//java 8 approach
		return entities.stream().map(entity -> {
			Contact contact = new Contact();
			BeanUtils.copyProperties(entity, contact);
			return contact;
		}).collect(Collectors.toList());
	}

	@Override
	public Contact getContactById(Integer cid) {
		Optional<ContactEntity> findById = contactRepo.findById(cid);
		if(findById.isPresent()) {
			ContactEntity entity = findById.get();
			Contact c = new Contact();
			BeanUtils.copyProperties(entity, c);
			return c;
		}
		return null;
	}

	@Override
	public boolean updateContact(Contact c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteContact(Integer cid) {
		contactRepo.deleteById(cid);
		return true;
	}
}
