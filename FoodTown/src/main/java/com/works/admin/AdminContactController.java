package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Contact;

import util.HibernateUtil;
import util.Util;
@Controller
@RequestMapping("/admin")
public class AdminContactController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/contactList", method = RequestMethod.GET)
	public String contactList(Model model, HttpServletRequest req ) {
		
		Session session = sf.openSession();
		List<Contact> cls = session.createQuery("from Contact").list();
		model.addAttribute("contactData", cls);
		
		return Util.control(req, "contactList");
	}
	
	@RequestMapping(value = "/deleteContact/{contactid}", method = RequestMethod.GET)
	public String deleteContact(@PathVariable int contactid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Contact contact = session.load(Contact.class, contactid);
		session.delete(contact);
		tr.commit();
		return Util.control(req, "redirect:/admin/contactList");
	}
}
