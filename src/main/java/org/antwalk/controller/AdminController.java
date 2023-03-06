package org.antwalk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.antwalk.entity.Admin;
import org.antwalk.entity.Employee;
import org.antwalk.repository.AdminRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminRepo adminRepo;
	
//	@PostMapping("/insert")
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public Admin insert(Admin a) {
//		adminRepo.save(new Admin());
//		System.out.println("dummy added adding passd one");
		System.out.println(a);
		return adminRepo.save(a);
	}
	
	@GetMapping("/getall")
	public List<Admin> getAll(){
		return adminRepo.findAll();
	}
	
	@GetMapping("/getbyid/{id}")
	public Admin getById(@PathVariable long id) {
		return adminRepo.findById(id).get();
	}
	
//	@DeleteMapping("/deletebyid/{id}")
	@RequestMapping(value = "/deletebyid", method = RequestMethod.DELETE)
	public String deleteById(long id) {
		System.out.println(id);
		adminRepo.deleteById(id);
		return "Deleted";
	} 
	
	@PutMapping("/update/{id}")
	public String update(@RequestBody Admin a, @PathVariable long id) {
		List<Admin> adminList = adminRepo.findAll();
		for(Admin obj:adminList) {
			if(obj.getAid() == id) {
				if(a.getAid() == id) {
					adminRepo.save(a);
					return "Updated";
				}
				
				else {
					return "Id doesn't match";
				}
				
			}
		}
		return "Id does not exist";
		
	}
	
//	@RequestMapping(value="/addAdmin",method=RequestMethod.GET)
//	public String addAdmin() {
//		return "addAdmin";
//	}
	
}
