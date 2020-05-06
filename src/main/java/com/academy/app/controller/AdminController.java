package com.academy.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.academy.app.entity.StaffType;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	RestTemplate restTemplate;
	
	@Value("${BASE.URL}")
	private String baseUrl;
	
	@RequestMapping("/")
	public String admin() {
		return "admin/admin-home";
	}

	@RequestMapping(value = "/staffType")
	public String all(Model model) {
		List<StaffType> response = restTemplate.getForObject(baseUrl+"/", List.class);
		model.addAttribute("staffTypeList", response);
		return "admin/admin-staff-type";
	}
}
