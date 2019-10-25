package com.works.user;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Cart;

import util.HibernateUtil;

@Controller
@RequestMapping(value = "/user")
public class UserIncluderController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String css() {
		return "user/inc/css";
	}
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String jsUser() {
		return "user/inc/js";
	}
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String headerUser(Model model, Cart cart) {
		Session session = sf.openSession();
		List<Cart> cls = session.createQuery("from Cart").list();
		int carts = cls.size();
		model.addAttribute("carts", carts);
		System.out.println("cartid" + cart.getCartid());
		model.addAttribute("uid", UserLoginController.userid);
		model.addAttribute("uname", UserLoginController.uname);
		return "user/inc/header";
	}
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footerUser() {
		return "user/inc/footer";
	}
	
	@RequestMapping(value = "/css", method = RequestMethod.POST)
	public String cssPost() {
		return "user/inc/css";
	}
	@RequestMapping(value = "/js", method = RequestMethod.POST)
	public String jsUserPost() {
		return "user/inc/js";
	}
	@RequestMapping(value = "/header", method = RequestMethod.POST)
	public String headerUserPost(Model model) {
		Session session = sf.openSession();
		List<Cart> cls = session.createQuery("from Cart").list();
		int carts = cls.size();
		model.addAttribute("carts", carts);
		
		model.addAttribute("uid", UserLoginController.userid);
		model.addAttribute("uname", UserLoginController.uname);
		return "user/inc/header";
	}
	@RequestMapping(value = "/footer", method = RequestMethod.POST)
	public String footerUserPost() {
		return "user/inc/footer";
	}
}
