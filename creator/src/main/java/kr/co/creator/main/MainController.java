package kr.co.creator.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	MainService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		logger.info("main");
		
		service.main();
		
		return "main/main";
	}
	
	@RequestMapping(value = "/menubar", method = RequestMethod.GET)
	public String menubar() {
		logger.info("menubar");
		
		return "main/menubar";
	}

	@RequestMapping(value = "/menubar2", method = RequestMethod.GET)
	public String menubar2() {
		logger.info("menubar2");
		
		return "main/menubar2";
	}
	
	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public String intro() {
		logger.info("intro");
		
		return "intro/intro";
	}
}//class