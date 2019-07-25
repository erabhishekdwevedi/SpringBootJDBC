package policy.admin.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import policy.admin.model.Policy;
import policy.admin.service.PolicyService;

@Controller
public class PolicyController {
	
	@Autowired
	PolicyService policyService;
	
	 //the welcome page
		@RequestMapping("/welcome")
		public ModelAndView firstPage() {
			return new ModelAndView("welcome");
		}

	    //show the add Policy form and also pass an empty backing bean object to store the form field values
		@RequestMapping(value = "/addNewPolicy", method = RequestMethod.GET)
		public ModelAndView show() {
			return new ModelAndView("addPolicy", "policy", new Policy());
		}

	    //Get the form field vaues which are populated using the backing bean and store it in db
		@RequestMapping(value = "/addNewPolicy", method = RequestMethod.POST)
		public ModelAndView processRequest(@ModelAttribute("policy") Policy policy) {
			policyService.insertPolicy(policy);
			List<Policy> policies = policyService.getAllPolicies();
			ModelAndView model = new ModelAndView("getPolicies");
			model.addObject("policies", policies);
			return model;
		}

	    //show all policies saved in db
		@RequestMapping("/getPolicies")
		public ModelAndView getPolicies() {
			List<Policy> policies = policyService.getAllPolicies();
			ModelAndView model = new ModelAndView("getPolicies");
			model.addObject("policies", policies);
			return model;
		}

}
