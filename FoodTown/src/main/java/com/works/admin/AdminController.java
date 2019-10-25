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

import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class AdminController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	int editID = 0;
	@RequestMapping(value = "/adminRegister", method = RequestMethod.GET)
	public String adminRegs(Model model, HttpServletRequest req) {
		
		
		return Util.control(req, "adminRegister");
	}
	
	@RequestMapping(value = "/adminList", method = RequestMethod.GET)
	public String adminList(Model model, HttpServletRequest req) {
		
		Session session = sf.openSession();
		List<Admin> als = session.createQuery("from Admin").list();
		model.addAttribute("adminData", als);
		
		return Util.control(req, "adminList");
	}
	@RequestMapping(value = "/adminInsert", method = RequestMethod.POST)
	public String adminInsert(Admin admin, HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		admin.setApass(Util.MD5(admin.getApass()));
		int id =  (int) sesi.save(admin);
		System.out.println("insert id : " + id);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/adminList");
	}
	@RequestMapping(value = "/deleteAdmin/{aid}", method = RequestMethod.GET)
	public String adminDelete(@PathVariable int aid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		Admin admin = session.load(Admin.class, aid);
		session.delete(admin);
		tr.commit();
		return Util.control(req, "redirect:/admin/adminList");
	}
	@RequestMapping(value = "/editAdmin/{aid}", method = RequestMethod.GET)
	public String adminEdit(@PathVariable int aid, Model model, HttpServletRequest req) {
		editID = aid;
		Session session = sf.openSession();
		
		Admin admin = session.load(Admin.class, aid);
		model.addAttribute("adminEditData", admin);
		return Util.control(req, "adminEdit");
	}
	
	@RequestMapping(value = "/adminEdit", method = RequestMethod.POST)
	public String admnEdit(Admin admin, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		admin.setAid(editID);
		session.update(admin);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/adminList");
	}
}
