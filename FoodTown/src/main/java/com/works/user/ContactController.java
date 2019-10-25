package com.works.user;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Contact;

import util.HibernateUtil;
@Controller
public class ContactController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/contact",  method = RequestMethod.GET)
	public String contact(HttpServletRequest req) {

		return "/user/contact";
	}
	@RequestMapping(value = "/contactInsert", method = RequestMethod.POST)
	public String contactInsert(Contact contact, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		session.save(contact);
		tr.commit();
		
		return "redirect:/";
	}

}
