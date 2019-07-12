package kr.co.creator.invest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InvestController {
	
	private static final Logger logger = LoggerFactory.getLogger(InvestController.class);
	
	@Autowired
	InvestService service;
	
	@RequestMapping(value = "/invest", method = RequestMethod.GET)
	public String invest() {
		logger.info("invest");
		
		service.invest();
		
		return "invest/invest";
	}
	
	@RequestMapping(value = "/invest_guide", method = RequestMethod.GET)
	public String invest_guide() {
		logger.info("invest_guide");
				
		return "invest/invest_guide";
	}
	
	@RequestMapping(value = "/invest_list", method = RequestMethod.GET)
	public String invest_list() {
		logger.info("invest_list");
				
		return "invest/invest_list";
	}
	
	@RequestMapping(value = "/invest_detail", method = RequestMethod.GET)
	public String invest_detail() {
		logger.info("invest_detail");
				
		return "invest/invest_detail";
	}
	
	@RequestMapping(value = "/invest_finish", method = RequestMethod.GET)
	public String invest_finish() {
		logger.info("invest_finish");
				
		return "invest/invest_finish";
	}
}//class