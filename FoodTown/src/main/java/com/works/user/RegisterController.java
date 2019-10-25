package com.works.user;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.works.model.User;

import util.HibernateUtil;
import util.Util;

@Controller
public class RegisterController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/register",  method = RequestMethod.GET)
	public String register() {
		return "user/register";
	}
	
	@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
	public String userRegister(HttpServletRequest req, Model model, User user, @RequestParam String upass2, @RequestParam String upass) {
		if (upass2.equals(upass)) {
			Session sesi = sf.openSession();
			Transaction tr = sesi.beginTransaction();
			user.setUpass(Util.MD5(user.getUpass()));
			int id =  (int) sesi.save(user);
			System.out.println("insert id : " + id);
			tr.commit();
			return "redirect:/";
		}else {
			model.addAttribute("error", "Please Confirm Password.");
			
			return "user/register";
		}
		
		
	}
}
