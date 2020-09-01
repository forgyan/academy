package com.academy.controller;

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

import com.academy.app.entity.StaffBand;
import com.academy.app.entity.StaffType;

@Controller
@RequestMapping("/staffBand")
public class StaffBandController {
	
	@Autowired
	RestTemplate restTemplate;
	
	@Value("${BASE.URL}")
	private String baseUrl;
	
	@Value("${STAFF.BAND.URL}")
	private String restUrl;
	
	@PostMapping(value = "/add")
	public String add(@RequestBody StaffBand staffBand, Model model) {
		ResponseEntity<Void> response = restTemplate.postForObject(baseUrl+restUrl, staffBand, ResponseEntity.class);

		List<StaffType> staffList = restTemplate.getForObject(baseUrl+restUrl, List.class);
		model.addAttribute("staffTypeList", staffList);
		return "admin/admin-staff-band";
	}
	
	@RequestMapping(value = "/getAll")
	@ResponseBody
	public List<StaffType> getAll() {
		List<StaffType> response = restTemplate.getForObject(baseUrl+restUrl, List.class);
		return response;
	}
	


}
