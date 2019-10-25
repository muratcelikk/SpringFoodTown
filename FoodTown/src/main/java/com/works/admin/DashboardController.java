package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Admin;
import com.works.model.Bcomment;
import com.works.model.Categories;
import com.works.model.Contact;
import com.works.model.Fcomment;
import com.works.model.Order;
import com.works.model.Product;
import com.works.model.User;

import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class DashboardController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashBoard( HttpServletRequest req, Model model ) {
		model.addAttribute("ls", dataResult());
		//currencyResult();
		
		Session session = sf.openSession();
		List<Product> burger = session.createQuery("from Product WHERE cid = 1").list();
		int burgers = burger.size();
		model.addAttribute("burgers", burgers);
		
		List<Product> pizza = session.createQuery("from Product WHERE cid = 2").list();
		int pizzas = pizza.size();
		model.addAttribute("pizzas", pizzas);
		
		List<Product> vegatarian = session.createQuery("from Product WHERE cid = 3").list();
		int vegatarians = vegatarian.size();
		model.addAttribute("vegatarians", vegatarians);
		
		List<Product> drink = session.createQuery("from Product WHERE cid = 4").list();
		int drinks = drink.size();
		model.addAttribute("drinks", drinks);
		
		List<Product> desert = session.createQuery("from Product WHERE cid = 5").list();
		int deserts = desert.size();
		model.addAttribute("deserts", deserts);
		
		List<Product> product = session.createQuery("from Product").list();
		int products = product.size();
		model.addAttribute("products", products);
		
		List<Categories> category = session.createQuery("from Categories").list();
		int categories = category.size();
		model.addAttribute("category", categories);
		
		List<Admin> admin = session.createQuery("from Admin").list();
		int admins = admin.size();
		model.addAttribute("admins", admins);
		
		List<User> user = session.createQuery("from User").list();
		int users = user.size();
		model.addAttribute("users", users);
		
		List<Bcomment> bcomment = session.createQuery("from Bcomment").list();
		int bcomments = bcomment.size();
		model.addAttribute("bcomments", bcomments);
		
		List<Fcomment> fcomment = session.createQuery("from Fcomment").list();
		int fcomments = fcomment.size();
		model.addAttribute("fcomments", fcomments);
		
		List<Contact> contact = session.createQuery("from Contact").list();
		int contacts = contact.size();
		model.addAttribute("contacts", contacts);
		
		List<Order> order = session.createQuery("from Order").list();
		int orders = order.size();
		model.addAttribute("orders", orders);
		
		return Util.control(req, "dashboard");
	}
	
	
	
	public List<Admin> dataResult() {
		Session sesi = sf.openSession();
		List<Admin> ls = sesi.createQuery("from Admin").getResultList();
		return ls;
	}
	
	// delete admin
	@RequestMapping(value = "/deleteAdmin/{aid}")
	public String deleteAdmin(@PathVariable int aid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Admin adm = sesi.load(Admin.class, aid);
		sesi.delete(adm);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	@RequestMapping(value = "/updateAdmin/{aid}")
	public String updateAdmin(@PathVariable int aid,HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		Admin adm = sesi.load(Admin.class, aid);
		adm.setAname("Murat Çelik");
		
		sesi.update(adm);
		
		tr.commit();
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	
	public void currencyResult() {
		
		try {
			String url = "https://www.tcmb.gov.tr/kurlar/today.xml";
			Document doc = Jsoup.connect(url).timeout(30000).ignoreContentType(true).get();
			Elements list = doc.select("Currency");
			for(Element item : list) {
				String CurrencyName = item.getElementsByTag("CurrencyName").text();
				System.out.println(CurrencyName);
			}
			System.out.println(doc.toString());
		} catch (Exception e) {
			System.err.println("Curency Error : " + e);
		}
		
	}
	
	
	
	
	
	
}
