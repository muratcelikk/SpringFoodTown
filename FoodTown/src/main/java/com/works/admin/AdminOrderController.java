package com.works.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.OrderTable;

import util.DB;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class AdminOrderController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	DB db = new DB();
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public String orderList(Model model, HttpServletRequest req ) {
		
		model.addAttribute("orderData", orderTable());
		
		return Util.control(req, "orderList");
	}
	
	@RequestMapping(value = "/onWay/{oid}", method = RequestMethod.GET)
	public String onWay(Model model, HttpServletRequest req, @PathVariable int oid) {
		try {
			String query = "UPDATE `order` SET `statu` = ? WHERE `order`.`oid` = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, "On Way");
			pre.setInt(2, oid);
			pre.executeUpdate();
		} catch (Exception e) {
			System.err.println("Warning : " + e);
		}
		
		
		return Util.control(req, "redirect:/admin/orderList");
	}
	
	@RequestMapping(value = "/delivered/{oid}", method = RequestMethod.GET)
	public String delivered(Model model, HttpServletRequest req,@PathVariable int oid ) {
		try {
			String query = "UPDATE `order` SET `statu` = ? WHERE `order`.`oid` = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, "Delivered");
			pre.setInt(2, oid);
			pre.executeUpdate();
		} catch (Exception e) {
			System.err.println("Warning : " + e);
		}
		
		
		return Util.control(req, "redirect:/admin/orderList");
	}
	
	public List<OrderTable> orderTable(){
		List<OrderTable> otpd = new ArrayList<OrderTable>();
		try {
			String query = "SELECT * FROM `order` `o` INNER JOIN `user` as `u` ON `o`.`uid` = `u`.`uid`";
			PreparedStatement prs = db.connect(query);
			ResultSet rs = prs.executeQuery();
			while (rs.next()) {
				OrderTable order = new OrderTable();
				order.setOid(rs.getInt("oid"));
				order.setOtotalprize(rs.getDouble("ototalprize"));
				order.setOtotalquantity(rs.getInt("ototalquantity"));
				order.setStatu(rs.getString("statu"));
				order.setUname(rs.getString("uname"));
				otpd.add(order);
				
			}
		} catch (Exception e) {
			System.err.println("productTable error : " + e);
		}
		return otpd;
	}
	
}
