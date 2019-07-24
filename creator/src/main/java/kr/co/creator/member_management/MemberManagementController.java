package kr.co.creator.member_management;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberManagementController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberManagementController.class);
	
	@Autowired
	MemberManagementService service;
	
	@RequestMapping(value = "/user_mgt", method = RequestMethod.GET)
	public String user_mgt() {
		logger.info("user_mgt");
		
		service.user_mgt();
		
		return "member_management/user_member_mgt";
	}//user_mgt
	
	
	@RequestMapping(value = "/busi_user_mgt", method = RequestMethod.GET)
	public String busi_user_mgt() {
		logger.info("busi_user_mgt");
				
		return "member_management/busi_user_member_mgt";
	}//busi_user_mgt
	
}//class



