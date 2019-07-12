package kr.co.creator.user_management;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserManagementController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserManagementController.class);
	
	@Autowired
	UserManagementService service;
	
	@RequestMapping(value = "/investor_member_mgn", method = RequestMethod.GET)
	public String investor_member_mgn() {
		logger.info("investor_member_mgn");
		
		service.investor_member_mgn();
		
		return "user_management/investor_member_mgn";
	}
	
	@RequestMapping(value = "/business_member_mgn", method = RequestMethod.GET)
	public String business_member_mgn() {
		logger.info("business_member_mgn");
				
		return "user_management/business_member_mgn";
	}
}//class