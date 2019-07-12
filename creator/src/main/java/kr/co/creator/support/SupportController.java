package kr.co.creator.support;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SupportController {
	
	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);
	
	@Autowired
	SupportService service;
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq() {
		logger.info("faq");
		
		service.faq();
		
		return "support/faq";
	}
	
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public String support() {
		logger.info("support");
		
		service.support();
		
		return "support/support";
	}
	
	@RequestMapping(value = "/policy", method = RequestMethod.GET)
	public String policy() {
		logger.info("policy");
		
		return "support/policy";
	}
	
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public String inquiry() {
		logger.info("inquiry");
				
		return "support/inquiry";
	}
}//class