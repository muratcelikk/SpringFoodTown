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

import com.works.model.Blog;

import util.DB;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class AdminBlogController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	int editID = 0;
	DB db = new DB();
	@RequestMapping(value = "/newBlog", method = RequestMethod.GET)
	public String newBlog(Model model, HttpServletRequest req ) {

		
		return Util.control(req, "newBlog");
	}
	
	@RequestMapping(value = "/blogList", method = RequestMethod.GET)
	public String blogList(Model model, HttpServletRequest req ) {
		
		Session session = sf.openSession();
		List<Blog> bls = session.createQuery("from Blog").list();
		model.addAttribute("blogData", bls);
		
		return Util.control(req, "blogList");
	}
	
	@RequestMapping(value = "/blogInsert", method = RequestMethod.POST)
	public String blogInsert(Blog blog, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		session.save(blog);
		tr.commit();
		
		
		return Util.control(req, "redirect:/admin/blogList");
	}
	@RequestMapping(value = "/deleteBlog/{bid}", method = RequestMethod.GET)
	public String blogDelete(@PathVariable int bid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Blog blog = session.load(Blog.class, bid);
		session.delete(blog);
		tr.commit();
		return Util.control(req, "redirect:/admin/blogList");
	}
	@RequestMapping(value = "/editBlog/{bid}", method = RequestMethod.GET)
	public String blogEdit(@PathVariable int bid, Model model, HttpServletRequest req) {
		editID = bid;
		Session session = sf.openSession();
		
		Blog blog = session.load(Blog.class, bid);
		model.addAttribute("blogEditData", blog);
		return Util.control(req, "blogEdit");
	}
	
	@RequestMapping(value = "/blogEdit", method = RequestMethod.POST)
	public String blgEdit(Blog blog, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		blog.setBid(editID);
		session.update(blog);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/blogList");
	}
	
	
}
