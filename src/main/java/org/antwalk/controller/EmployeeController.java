package org.antwalk.controller;

import java.util.List;

import org.antwalk.entity.Bus;
import org.antwalk.entity.Employee;
import org.antwalk.repository.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	EmployeeRepo empRepo;
	
	@PostMapping("/insert")
	public Employee insert(@RequestBody Employee e) {
		return empRepo.save(e);
	}
	
	@GetMapping("/getall")
	public List<Employee> getAll(){
		return empRepo.findAll();
	}
	
	@GetMapping("/getbyid/{id}")
	public Employee getById(@PathVariable long id) {
		return empRepo.findById(id).get();
	}
	
	@DeleteMapping("/deletebyid/{id}")
	public String deleteById(@PathVariable long id) {
		empRepo.deleteById(id);
		return "Deleted";
	}
	
	@PutMapping("/update/{id}")
	public String update(@RequestBody Employee e, @PathVariable long id) {
		List<Employee> empList = empRepo.findAll();
		for(Employee obj:empList) {
			if(obj.getEid() == id) {
				if(e.getEid() == id) {
					empRepo.save(e);
					return "Updated";
				}
				
				else {
					return "Id doesn't match";
				}
				
			}
		}
		return "Id does not exist";
		
	}
}
