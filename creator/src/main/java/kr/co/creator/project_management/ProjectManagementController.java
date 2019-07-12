package kr.co.creator.project_management;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectManagementController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectManagementController.class);
	
	@Autowired
	ProjectManagementService service;
	
	@RequestMapping(value = "/project_current_list", method = RequestMethod.GET)
	public String project_current_list() {
		logger.info("project_current_list");
		
		service.project_current_list();
		
		return "project_management/project_current_list";
	}
	
	@RequestMapping(value = "/project_evaluate_mgn", method = RequestMethod.GET)
	public String project_evaluate_mgn() {
		logger.info("project_evaluate_mgn");
				
		return "project_management/project_evaluate_mgn";
	}
	
	@RequestMapping(value = "/loan_evaluate", method = RequestMethod.GET)
	public String loan_evaluate() {
		logger.info("loan_evaluate");
				
		return "project_management/loan_evaluate";
	}
}//class