package kr.co.creator.account_management;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountListController {
	
	private static final Logger logger = LoggerFactory.getLogger(AccountListController.class);
	
	@Autowired
	AccountListService service;
	
	@RequestMapping(value = "/account_list", method = RequestMethod.GET)
	public String account_list() {
		logger.info("account_list");
		
		service.account_list();
		
		return "account_management/account_list";
	}
}//class