package org.antwalk.controller;

import java.util.ArrayList;
import java.util.List;

import org.antwalk.entity.ArrivalTimeTable;
import org.antwalk.entity.Route;
import org.antwalk.entity.RouteStop;
import org.antwalk.repository.ArrivalTimeRepo;
import org.antwalk.repository.RouteRepo;
import org.antwalk.repository.StopRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/arrivaltime")
public class ArrivalTimeController {

	@Autowired
	ArrivalTimeRepo arrivalTimeRepo;
	
	@Autowired
	RouteRepo routeRepo;
	
	@Autowired
	StopRepo stopRepo;
	
	@PostMapping("/insert")
	public ArrivalTimeTable insert(@RequestBody ArrivalTimeTable at) {
		return arrivalTimeRepo.save(at);
	}
	
	@GetMapping("/getall")
	public List<ArrivalTimeTable> getAll(){
		return arrivalTimeRepo.findAll();
	}
	
	@GetMapping("/getbyid/{rid}/{sid}")
	public ArrivalTimeTable getById(@PathVariable long rid, @PathVariable long sid) {
		//return arrivalTimeRepo.findById(new RouteAndStop(rid, sid)).get();
		return arrivalTimeRepo.findById(new RouteStop(routeRepo.findById(rid).get(), stopRepo.findById(sid).get())).get();
	}
	
	@DeleteMapping("/deletebyid/{rid}/{sid}")
	public String deleteById(@PathVariable long rid, @PathVariable long sid) {
		arrivalTimeRepo.deleteById(new RouteStop(routeRepo.findById(rid).get(), stopRepo.findById(sid).get()));
		return "Deleted";
		
	}
	
	@PutMapping("/update/{rid}/{sid}")
	public String update(@RequestBody ArrivalTimeTable at, @PathVariable long rid, @PathVariable long sid) {
		List<ArrivalTimeTable> atList = arrivalTimeRepo.findAll();
		for(ArrivalTimeTable obj:atList) {
			if(obj.getRs().equals(new RouteStop(routeRepo.findById(rid).get(), stopRepo.findById(sid).get()))) {
				if(at.getRs().equals(new RouteStop(routeRepo.findById(rid).get(), stopRepo.findById(sid).get()))){
					arrivalTimeRepo.save(at);
					return "Updated";
				}
				
				else {
					return "Id doesn't match";
				}
				
			}
		}
		return "Id does not exist";
		
	}
	/*
	 * @GetMapping("/admin/updateroute")
	 * 
	 * public List<ArrivalTimeTable> getAllStopsWithTimeByRouteId(@RequestParam long
	 * routeId, @RequestParam String shift) { try { Route route =
	 * routeRepo.findById(routeId).get();
	 * 
	 * if (shift.equalsIgnoreCase("morning")) { return
	 * arrivalTimeRepo.findAllByRouteStop_RouteOrderByMorningArrivalTime(route); }
	 * 
	 * else { return
	 * arrivalTimeRepo.findAllByRouteStop_RouteOrderByEveningArrivalTime(route); } }
	 * catch (Exception e) { System.out.println(e.getMessage()); return new
	 * ArrayList(); }
	 * 
	 * }
	 */

	
}
