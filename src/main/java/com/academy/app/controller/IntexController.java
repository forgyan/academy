package com.academy.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class IntexController {
	
	@Autowired
	RestTemplate restTemplate;
	
	@Value("${BASE.URL}")
	private String baseUrl;

	@RequestMapping(value = "/")
	public String test(Model model) {
		return "index";
	}
	
}
