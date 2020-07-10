package com.contact.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.contact.model.Contact;
import com.contact.service.ContactService;

@Controller
public class ContactInfoController {

	@Autowired
	private ContactService contactService;

	@GetMapping(value = { "/", "/addContact" })
	public String loadForm(Model model) {
		Contact c = new Contact();
		model.addAttribute("contact", c);
		return "contactInfo";
	}

	@PostMapping(value = "/saveContact")
	public String handleSubmitBtn(@ModelAttribute("contact") Contact c, RedirectAttributes attribut) {
		boolean isSaved = contactService.saveContact(c);
		if(isSaved) {
			attribut.addFlashAttribute("succMsg", "Contact Saved");
		}else {
			attribut.addFlashAttribute("errMsg", "Failed To Save Contact");
		}
		return "redirect:/addContact";
	}

	@GetMapping("/viewContacts")
	public String handleViewContactsLink(Model model) {
		List<Contact> contactsList = contactService.getAllContacts();
		model.addAttribute("contacts", contactsList);
		return "viewContacts";
	}

}
