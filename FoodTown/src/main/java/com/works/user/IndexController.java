package com.works.user;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Blog;
import com.works.model.Categories;
import com.works.model.Fcomment;
import com.works.model.Product;

import util.HibernateUtil;
	
@Controller	
public class IndexController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/",  method = RequestMethod.GET)
	public String index(Model model) {
		Session session = sf.openSession();
		List<Product> burger = session.createQuery("from Product WHERE cid = 1").list();
		model.addAttribute("burgers", burger);
		
		List<Product> pizza = session.createQuery("from Product WHERE cid = 2").list();
		model.addAttribute("pizzas", pizza);
		
		List<Product> vegatarian = session.createQuery("from Product WHERE cid = 3").list();
		model.addAttribute("vegatarians", vegatarian);
		
		List<Product> drink = session.createQuery("from Product WHERE cid = 4").list();
		model.addAttribute("drinks", drink);
		
		List<Product> desert = session.createQuery("from Product WHERE cid = 5").list();
		model.addAttribute("deserts", desert);
		
		List<Blog> blog = session.createQuery("from Blog order by bid desc").setMaxResults(3).list();
		model.addAttribute("blog", blog);
		
		List<Fcomment> comment = session.createQuery("from Fcomment order by fcid desc").setMaxResults(8).list();
		model.addAttribute("comment", comment);
		
		return "user/index";
		
	}
}
