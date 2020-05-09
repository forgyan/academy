package com.academy.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.academy.app.entity.AcademicUnit;

@Controller
@RequestMapping("/academicUnit")
public class AcademicUnitController {
	
	@Autowired
	RestTemplate restTemplate;
	
	@Value("${BASE.URL}")
	private String baseUrl;
	
	@Value("${ACADEMIC.UNIT.URL}")
	private String restUrl;
	
	@PostMapping(value = "/add")
	public String add(@RequestBody AcademicUnit academicUnit, Model model) {
		ResponseEntity<Void> response = restTemplate.postForObject(baseUrl+restUrl, academicUnit, ResponseEntity.class);

		List<AcademicUnit> staffList = restTemplate.getForObject(baseUrl+restUrl, List.class);
		model.addAttribute("staffTypeList", staffList);
		return "admin/admin-staff-type";
	}
	
	@RequestMapping(value = "/getAll")
	@ResponseBody
	public List<AcademicUnit> getAll() {
		List<AcademicUnit> response = restTemplate.getForObject(baseUrl+restUrl, List.class);
		return response;
	}
	




}
