package com.works.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Order;

import util.HibernateUtil;
import util.Util;

@Controller
public class MyOrderController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/myOrder",  method = RequestMethod.GET)
	public String myOrder(HttpServletRequest req, Model model) {
		Session session = sf.openSession();
		List<Order> mols = session.createQuery("from Order WHERE uid = "+UserLoginController.userid+"").list();
		model.addAttribute("myOrder", mols);
		
		return Util.controlUser(req, "/user/myOrder");
	}
}
