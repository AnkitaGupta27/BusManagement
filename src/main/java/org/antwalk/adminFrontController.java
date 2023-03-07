package org.antwalk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.antwalk.entity.ArrivalTimeTable;
import org.antwalk.entity.Route;
import org.antwalk.repository.ArrivalTimeRepo;
import org.antwalk.repository.RouteRepo;
import org.antwalk.repository.StopRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class adminFrontController {
	
	@Autowired
	ArrivalTimeRepo arrivalTimeRepo;

	@Autowired
	RouteRepo routeRepo;

	@Autowired
	StopRepo stopRepo;

	
	@RequestMapping("/admin/addAdmin")
	public String addAmin() {
		return "addAdmin";
	}
	
	@RequestMapping("/admin/listAll")
	public ModelAndView lisAll() {
		String uri = "http://localhost:8082/admin/getall";
		RestTemplate restTemplate = new RestTemplate();
	    List<LinkedHashMap<String,String>> result = restTemplate.getForObject(uri, List.class);
//	    System.out.println(result.get(0));
	    ModelAndView mv = new ModelAndView("AddminShow");
//	    mv.addObject("Admin",result.get(13));
	    mv.addObject("Admin",result);
	    return mv;
	}
	
	
	@RequestMapping("/admin/manageRoute")
	public String manageRoute() {
		return "manageRoute";
	}
	
	@RequestMapping("/admin/addRoute")
	public ModelAndView addRoutePage(HttpServletRequest request) {
		String uri = "http://localhost:8082/stop/getall"; 
		RestTemplate restTemplate = new RestTemplate();
	    List<LinkedHashMap<String,String>> result = restTemplate.getForObject(uri, List.class);
	    System.out.println(result);
		ModelAndView mv = new ModelAndView("addRoute");
		mv.addObject("list",result);
		return mv;
	}

	@RequestMapping("/admin/addRouteDetails")
	public String addRouteDetails(HttpServletRequest request) {
		int stId = Integer.parseInt(request.getParameter("startStop"));
		int edId = Integer.parseInt(request.getParameter("endStop"));
		System.out.println("startId= " + stId + " edId= " + edId );
		return "manageRoute";		
	}
	

//	@RequestMapping("/admin/editRoute")
//		public ModelAndView editRoute(HttpServletRequest request) {
//			String uri = "http://localhost:8080/route/getall"; 
//			RestTemplate restTemplate = new RestTemplate();
//			List<LinkedHashMap<String,String>> result = restTemplate.getForObject(uri, List.class);
////		    System.out.println(result);
//		    List<List<String>> toPass = new ArrayList<>();
//		    for(LinkedHashMap<String,String> e : result) {
////		    	System.out.println(e.keySet());
//		    	List<String> item = new ArrayList<>();
//		    	Set<String> keys = e.keySet();
////		    	toPass.add(item);
//		    	item.forEach(System.out::println);
////		    	System.out.println((String)e.get("rid"));
//		    }
////		    System.out.println(toPass);
//			ModelAndView mv = new ModelAndView("editRoute");
////			mv.addObject("list",toPass);
//			return mv;
//
//	}
	@RequestMapping("/admin/editRoute")
	public ModelAndView editRoute(HttpServletRequest request) {
		String uri = "http://localhost:8082/route/getall"; 
		RestTemplate restTemplate = new RestTemplate();
	    List<LinkedHashMap<String,String>> result = restTemplate.getForObject(uri, List.class);
		ModelAndView mv = new ModelAndView("editRoute");
		mv.addObject("list",result);
		return mv;
	
	}
	
	 @RequestMapping("/admin/updateroute") public String updateroute() { return
	  "updateroute"; }
	 
	
	/*
	 * @GetMapping("/admin/updateroute")
	 * 
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
	
//	@RequestMapping("/admin/deleteAdmin")
//	public S deleteAdmin() {
//		return "deleteAdmin";
//	}

	
	
	//	
//	@RequestMapping("/admin/passToInsert")
//	public String passToInsert(HttpServletRequest req) {
//		AdminController a = new AdminController();
//		System.out.println("printing aid: " + req.getParameter("aid"));
//		System.out.println("printing name: " + req.getParameter("name"));
//		System.out.println("printing username: " + req.getParameter("username"));
//		long aid = Long.parseLong(req.getParameter("aid"));
//		String name = req.getParameter("name");
//		String email = req.getParameter("username");
//		String password = req.getParameter("password");
//		Admin ad = new Admin(aid,name,email,password);
//		a.insert(ad);
//		return "adminAdded";
//	}
	

