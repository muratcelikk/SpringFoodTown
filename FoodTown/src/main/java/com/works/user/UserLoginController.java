package com.works.user;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.works.model.Product;
import com.works.model.User;

import util.DB;
import util.HibernateUtil;
import util.Util;

@Controller
public class UserLoginController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	DB db = new DB();
	public static int userid;
	public static String uname;
	public static String umail;
	@RequestMapping(value = "/login",  method = RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	@RequestMapping(value = "/logging", method = RequestMethod.POST)
	public String adminLogin( 
			User user, 
			Model model, 
			HttpServletRequest req, 
			@RequestParam(defaultValue = "off") String remember,
			HttpServletResponse res) {
		try {
			String query = "select * from user where umail = ? and upass = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, user.getUmail());
			pre.setString(2, Util.MD5(user.getUpass()));
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				user.setUid(rs.getInt("uid"));
				user.setUname(rs.getString("uname"));
				req.getSession().setAttribute("uid", user);
				userid = user.getUid();
				uname = user.getUname();
				umail = user.getUmail();
				// remember check ?
				if(remember.equals("on")) {
					Cookie cookie = new Cookie("user_cookie", ""+rs.getInt("uid"));
					cookie.setMaxAge(60*60*24);
					res.addCookie(cookie);
				}

				return "redirect:/";
			} else {
				model.addAttribute("error", "Mail or Password is incorrect. Please try again.");
			}
		} catch (Exception e) {
			System.err.println("login error : " + e);
			model.addAttribute("error", "System has error");
		}
		return "user/login";
	}
	
	@RequestMapping(value = "/settingsInsert", method = RequestMethod.POST)
	public String settingsInsert(User user, HttpServletRequest req, @RequestParam String upass2, @RequestParam String upass, Model model) {
		if (upass2.equals(upass)) {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			
			user.setUid(userid);
			user.setUpass(Util.MD5(user.getUpass()));
			session.update(user);
			tr.commit();
			return Util.controlUser(req, "redirect:/");
		}else {
			model.addAttribute("error", "Please Confirm Password.");
			return "user/settings";
		}
		
		
		
	}
	
	@RequestMapping(value = "/settings",  method = RequestMethod.GET)
	public String settings(HttpServletRequest req, User user, Model model) {
		model.addAttribute("uname", uname);
		model.addAttribute("umail", umail);
		
		return Util.controlUser(req, "/user/settings");
	}
	
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletRequest req, HttpServletResponse res) {

			Cookie cookie = new Cookie("user_cookie", "");
			cookie.setMaxAge(0);
			res.addCookie(cookie);
			
			
			userid = 0;
			uname = null;

			req.getSession().removeAttribute("uid");
			
			try {
				String query = "Delete from cart";
				PreparedStatement pre = db.connect(query);
				pre.executeUpdate();
			} catch (Exception e) {
				System.err.println("Delete error : " + e);
			}

			return "redirect:/";
			 
	}
}
