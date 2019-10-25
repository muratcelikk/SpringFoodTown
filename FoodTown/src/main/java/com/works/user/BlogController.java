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

import com.works.model.Bcomment;
import com.works.model.Blog;
import com.works.model.Fcomment;
import com.works.model.Product;

import util.HibernateUtil;

@Controller
public class BlogController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(Model model) {
		Session session = sf.openSession();
		List<Blog> bls = session.createQuery("from Blog").list();
		model.addAttribute("blog", bls);
		
		return "user/blog";
	}
	
	@RequestMapping(value = "/blogDetail/{bid}", method = RequestMethod.GET)
	public String blogDetail(@PathVariable int bid, Model model) {
		
		Session session = sf.openSession();
		Blog blog = session.load(Blog.class, bid);
		model.addAttribute("detailBlog", blog);
		
		List<Bcomment> bcls = session.createQuery("from Bcomment WHERE bcommentid = "+bid+"").list();
		model.addAttribute("bcomment", bcls);
		model.addAttribute("size", bcls.size());
		
		return "user/blogDetail";
	}
	
	@RequestMapping(value = "/blogDetail/{bid}", method = RequestMethod.POST)
	public String detailInsert(@PathVariable int bid, Model model, Bcomment comment) {
		Session session = sf.openSession();
		
		
		Transaction tr = session.beginTransaction();
		session.save(comment);
		
		tr.commit();
		
		
		Blog blog = session.load(Blog.class, bid);
		model.addAttribute("detailBlog", blog);
		
		List<Bcomment> bcls = session.createQuery("from Bcomment WHERE bcommentid = "+bid+"").list();
		model.addAttribute("bcomment", bcls);
		model.addAttribute("size", bcls.size());
		

		
		return "user/blogDetail";
	}
}
