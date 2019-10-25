package com.works.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FAQController {
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq() {
		
		return "user/faq";
	}
}
