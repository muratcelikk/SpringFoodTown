package com.works.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Admin;

import util.Util;

@Controller
@RequestMapping("/admin")
public class AdminIncluderController {
	
	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String dashBoard() {
		return "admin/inc/css";
	}
	
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String jsAdmin() {
		return "admin/inc/js";
	}
	
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String menu(Model model, Admin admin) {
		model.addAttribute("link", Util.link);
		model.addAttribute("name", AdminLoginController.name);
		
		return "admin/inc/menu";
	}
	
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footerAdmin() {
		return "admin/inc/footer";
	}
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String headerAdmin() {
		return "admin/inc/header";
	}
}
