package com.contact.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.contact.model.Contact;
import com.contact.service.ContactService;

@Controller
public class ViewContactsController {

	@Autowired
	private ContactService contactService;

	@RequestMapping("/editContact")
	public String editContact(@RequestParam("cid") Integer contactId, Model model) {
		Contact c = contactService.getContactById(contactId);
		model.addAttribute("contact", c);
		return "contactInfo";
	}

	@RequestMapping("/deleteContact")
	public String deleteContact(@RequestParam("cid") Integer contactId) {
		boolean isDeleted = contactService.deleteContact(contactId);
		if(isDeleted) {
			return "redirect:/viewContacts";
		}
		return null;
	}
}
