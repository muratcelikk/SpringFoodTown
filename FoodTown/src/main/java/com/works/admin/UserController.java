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

import com.works.model.User;

import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class UserController {

SessionFactory sf = HibernateUtil.getSessionFactory();
	int editID = 0;
	@RequestMapping(value = "/userRegister", method = RequestMethod.GET)
	public String userRegs(Model model, HttpServletRequest req ) {
		
		
		return Util.control(req, "userRegister");
	}
	
	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public String userList(Model model, HttpServletRequest req ) {
		
		Session session = sf.openSession();
		List<User> uls = session.createQuery("from User").list();
		model.addAttribute("userData", uls);
		
		return Util.control(req, "userList");
	}
	
	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsert(User user, HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		user.setUpass(Util.MD5(user.getUpass()));
		int id =  (int) sesi.save(user);
		System.out.println("insert id : " + id);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/userList");
	}
	@RequestMapping(value = "/deleteUser/{uid}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable int uid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		User user = session.load(User.class, uid);
		session.delete(user);
		tr.commit();
		return Util.control(req, "redirect:/admin/userList");
	}
	@RequestMapping(value = "/editUser/{uid}", method = RequestMethod.GET)
	public String editUser(@PathVariable int uid, Model model, HttpServletRequest req) {
		editID = uid;
		Session session = sf.openSession();
		
		User user = session.load(User.class, uid);
		model.addAttribute("userEditData", user);
		return Util.control(req, "userEdit");
	}
	
	@RequestMapping(value = "/UserEdit", method = RequestMethod.POST)
	public String editUsr(User user, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		user.setUid(editID);
		session.update(user);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/userList");
	}
}
