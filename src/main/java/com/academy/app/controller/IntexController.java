package com.academy.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.academy.app.entity.StaffType;

@Controller
public class IntexController {
	
	@Autowired
	RestTemplate restTemplate;
	
	@Value("${BASE.URL}")
	private String baseUrl;

	@RequestMapping(value = "/")
	public String test(Model model) {
		StaffType res = restTemplate.getForObject(baseUrl+"/staff/1", StaffType.class);
		return "index";
	}
	
	@RequestMapping(value = "/add")
	public String test2(Model model) {
		System.out.println("Welcome"+baseUrl);
		StaffType stf = new StaffType();
		stf.setId(1);
		stf.setStaffType("Traning");
		ResponseEntity<Void> response = restTemplate.postForObject(baseUrl+"/staff/", stf, ResponseEntity.class);
		System.out.println(response);
		return "welcome";
	}
	
	@RequestMapping(value = "/all")
	public String all(Model model) {
		System.out.println("Welcome"+baseUrl);
		List<StaffType> response = restTemplate.getForObject(baseUrl+"/", List.class);
		System.out.println(response.size());
		System.out.println(response);
		return "welcome";
	}
	
}
