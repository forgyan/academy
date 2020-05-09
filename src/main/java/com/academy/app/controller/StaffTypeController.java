package com.academy.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.academy.app.entity.StaffType;

@Controller
@RequestMapping("/staff")
public class StaffTypeController {
	
	@Autowired
	RestTemplate restTemplate;
	
	@Value("${BASE.URL}")
	private String baseUrl;
	
	@Value("${STAFF.TYPE.URL}")
	private String wsUrl;
	
	@PostMapping(value = "/addStaffType")
	public String test2(@RequestBody StaffType staffType, Model model) {
		ResponseEntity<Void> response = restTemplate.postForObject(baseUrl+wsUrl, staffType, ResponseEntity.class);

		List<StaffType> staffList = restTemplate.getForObject(baseUrl+wsUrl, List.class);
		model.addAttribute("staffTypeList", staffList);
		return "admin/admin-staff-type";
	}
	
	@RequestMapping(value = "/getStaffType")
	@ResponseBody
	public List<StaffType> all() {
		List<StaffType> response = restTemplate.getForObject(baseUrl+wsUrl, List.class);
		return response;
	}
	
}
