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

import com.works.model.Admin;
import com.works.model.Bcomment;
import com.works.model.Fcomment;

import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class CommentController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/foodComment", method = RequestMethod.GET)
	public String foodComment(Model model, HttpServletRequest req ) {
		
		Session session = sf.openSession();
		List<Fcomment> fcls = session.createQuery("from Fcomment").list();
		model.addAttribute("fcomment", fcls);
		
		return Util.control(req, "foodComments");
	}
	
	@RequestMapping(value = "/blogComment", method = RequestMethod.GET)
	public String blogComment(Model model, HttpServletRequest req ) {
		
		Session session = sf.openSession();
		List<Bcomment> bcls = session.createQuery("from Bcomment").list();
		model.addAttribute("bcomment", bcls);
		
		return Util.control(req, "blogComments");
	}
	
	@RequestMapping(value = "/deleteFood/{fcid}", method = RequestMethod.GET)
	public String foodDelete(@PathVariable int fcid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Fcomment comment = session.load(Fcomment.class, fcid);
		session.delete(comment);
		tr.commit();
		return Util.control(req, "redirect:/admin/foodComments");
	}
	
	@RequestMapping(value = "/deleteBlog/{bcid}", method = RequestMethod.GET)
	public String blogDelete(@PathVariable int bcid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Bcomment comment = session.load(Bcomment.class, bcid);
		session.delete(comment);
		tr.commit();
		return Util.control(req, "redirect:/admin/blogComments");
	}
}
