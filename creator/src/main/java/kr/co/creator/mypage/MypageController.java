package kr.co.creator.mypage;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.InvestVO;

@Controller
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	MypageService service;
	
	@RequestMapping(value = "/my_dashboard", method = RequestMethod.GET)
	public String list(Model model) {
		logger.info("my_dashboard");
		List<InvestVO> list = null;
		list = service.investList();
		model.addAttribute("investList", list);
		return "mypage/my_dashboard";
	}
	
	@RequestMapping(value = "/my_depo_mgn", method = RequestMethod.GET)
	public String my_depo_mgn() {
		logger.info("my_depo_mgn");
				
		return "mypage/my_depo_mgn";
	}
	
	@RequestMapping(value = "/my_invest_list", method = RequestMethod.GET)
	public String my_invest_list() {
		logger.info("my_invest_list");
				
		return "mypage/my_invest_list";
	}
	
	@RequestMapping(value = "/my_loan_list", method = RequestMethod.GET)
	public String my_loan_list() {
		logger.info("my_loan_list");
				
		return "mypage/my_loan_list";
	}
	
	@RequestMapping(value = "/my_modify", method = RequestMethod.GET)
	public String my_modify() {
		logger.info("my_modify");
				
		return "mypage/my_modify";
	}
}//class