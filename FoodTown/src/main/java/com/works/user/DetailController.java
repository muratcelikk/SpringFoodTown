package com.works.user;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Fcomment;
import com.works.model.Product;

import util.HibernateUtil;

@Controller
public class DetailController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/detail/{pid}", method = RequestMethod.GET)
	public String detail(@PathVariable int pid, Model model, Fcomment comment) {
		Session session = sf.openSession();
		Product product = session.load(Product.class, pid);
		model.addAttribute("detailPro", product);
		
		List<Fcomment> fcls = session.createQuery("from Fcomment WHERE fcommentid = "+pid+"").list();
		model.addAttribute("fcomment", fcls);
		model.addAttribute("size", fcls.size());
		
		return "user/detail";
	}
	
	@RequestMapping(value = "/detail/{pid}", method = RequestMethod.POST)
	public String detailInsert(@PathVariable int pid, Model model, Fcomment comment) {
		Session session = sf.openSession();
		
		Transaction tr = session.beginTransaction();
		session.save(comment);
		
		tr.commit();
		
		Product product = session.load(Product.class, pid);
		model.addAttribute("detailPro", product);
		
		List<Fcomment> fcls = session.createQuery("from Fcomment WHERE fcommentid = "+pid+"").list();
		model.addAttribute("fcomment", fcls);
		model.addAttribute("size", fcls.size());
		
		

		
		return "user/detail";
	}
}
