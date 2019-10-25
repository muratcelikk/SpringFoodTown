package com.works.user;

import java.sql.PreparedStatement;
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

import com.works.model.Cart;
import com.works.model.Order;

import util.DB;
import util.HibernateUtil;
import util.Util;

@Controller
public class OrderController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	DB db = new DB();
	@RequestMapping(value = "/order",  method = RequestMethod.GET)
	public String order(HttpServletRequest req, Model model) {
		Session session = sf.openSession();
		List<Cart> cls = session.createQuery("from Cart").list();
		model.addAttribute("cart", cls);
		double total = 0;
		int totalq = 0;
		for (Cart item : cls) {
			System.out.println(item.getCartprize());
		total = total + item.getCartprize() * item.getCartquantity();
		}
		for (Cart item : cls) {
		totalq = totalq + item.getCartquantity();
		}
		System.out.println("User id :" + UserLoginController.userid);
		model.addAttribute("total", total);
		model.addAttribute("totalq", totalq);
		
		model.addAttribute("userid", UserLoginController.userid);
		
		return Util.controlUser(req, "/user/order");
	}
	
	@RequestMapping(value = "/order/{pid}", method = RequestMethod.POST)
	public String cartInsert(@PathVariable int pid, Model model, Cart cart, HttpServletRequest req) {
		Session session = sf.openSession();
		
		
		Transaction tr = session.beginTransaction();
		session.save(cart);
		
		tr.commit();
		
		
		List<Cart> cls = session.createQuery("from Cart").list();
		model.addAttribute("cart", cls);
		
		return Util.controlUser(req, "redirect:/order");
	}
	
	@RequestMapping(value = "/deleteOrder/{cartid}", method = RequestMethod.GET)
	public String orderDelete(@PathVariable int cartid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Cart cart = session.load(Cart.class, cartid);
		session.delete(cart);
		tr.commit();
		return Util.controlUser(req, "redirect:/order");
	}
	
	@RequestMapping(value = "/orderInsert", method = RequestMethod.POST)
	public String orderInsert(Cart cart, Order order, HttpServletRequest req, Model model) {
		
		
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		session.save(order);
		tr.commit();
		
		try {
			String query = "Delete from cart";
			PreparedStatement pre = db.connect(query);
			pre.executeUpdate();
		} catch (Exception e) {
			System.err.println("Delete error : " + e);
		}
		return Util.controlUser(req, "redirect:/order");
		
	}
}

