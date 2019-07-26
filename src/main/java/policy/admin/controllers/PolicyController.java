package policy.admin.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import policy.admin.model.Policy;
import policy.admin.service.PolicyService;

@Controller
public class PolicyController {
	
	@Autowired
	PolicyService policyService;	
	 
		@RequestMapping(value = "/policy", method = RequestMethod.GET)
		public ModelAndView showPolicyDetails(@RequestParam("id") String id) {
			
			Policy policy = policyService.getPolicyById(id);
			ModelAndView model = new ModelAndView("policy");
			model.addObject("policy",policy);
			
			return model;
		}
	
	
		@RequestMapping(value = "/addNewPolicy", method = RequestMethod.GET)
		public ModelAndView show() {
			return new ModelAndView("addPolicy", "policy", new Policy());
		}
	    
		@RequestMapping(value = "/addNewPolicy", method = RequestMethod.POST)
		public ModelAndView processRequest(@ModelAttribute("policy") Policy policy) {
			policyService.insertPolicy(policy);
			List<Policy> policies = policyService.getAllPolicies();
			ModelAndView model = new ModelAndView("getPolicies");
			model.addObject("policies", policies);
			return model;
		}

		@RequestMapping("/")
		public ModelAndView getPolicies() {
			List<Policy> policies = policyService.getAllPolicies();
			ModelAndView model = new ModelAndView("getPolicies");
			model.addObject("policies", policies);
			return model;
		}

}
