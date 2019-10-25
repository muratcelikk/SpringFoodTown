package com.works.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutUsController {

	@RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
	public String aboutUs() {
		
		return "user/aboutUs";
	}
}
