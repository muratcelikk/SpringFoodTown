package com.works.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class PolicyController {
	@RequestMapping(value = "/policy", method = RequestMethod.GET)
	public String policy() {
		
		return "user/policy";
	}
}
