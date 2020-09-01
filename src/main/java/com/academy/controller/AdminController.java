package com.academy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	RestTemplate restTemplate;
	
	@Value("${BASE.URL}")
	private String baseUrl;
	
	@Value("${STAFF.TYPE.URL}")
	private String staffTypeUrl;
	
	@RequestMapping("/")
	public String admin() {
		return "admin/admin-home";
	}

	@RequestMapping(value = "/staffType")
	public String staffType() {
		return "admin/admin-staff-type";
	}

	@RequestMapping(value = "/staffBand")
	public String staffBand() {
		return "admin/admin-staff-band";
	}

	@RequestMapping(value = "/academicYear")
	public String academicYear() {
		return "admin/admin-academic-year";
	}

	@RequestMapping(value = "/academicUnit")
	public String academicUnit() {
		return "admin/admin-academic-unit";
	}

	@RequestMapping(value = "/subject")
	public String subject() {
		return "admin/admin-subject";
	}
}
