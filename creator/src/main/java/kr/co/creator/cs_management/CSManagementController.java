package kr.co.creator.cs_management;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CSManagementController {
	
	private static final Logger logger = LoggerFactory.getLogger(CSManagementController.class);
	
	@Autowired
	CSManagementService service;
	
	@RequestMapping(value = "/notice_mgn", method = RequestMethod.GET)
	public String notice_mgn() {
		logger.info("notice_mgn");
		
		service.notice_mgn();
		
		return "cs_management/notice_mgn";
	}
	
	@RequestMapping(value = "/taq_mgn", method = RequestMethod.GET)
	public String taq_mgn() {
		logger.info("taq_mgn");
				
		return "cs_management/taq_mgn";
	}
	
	@RequestMapping(value = "/counseling_mgn", method = RequestMethod.GET)
	public String counseling_mgn() {
		logger.info("counseling_mgn");
				
		return "cs_management/counseling_mgn";
	}
}//class