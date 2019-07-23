package kr.co.creator.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.ProjectVO;

@Controller
public class MypageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	MypageService service;
	
	@RequestMapping(value = "/my_dashboard", method = RequestMethod.GET)
	public String list(Model model, ProjectVO proVO, InvestVO ivVO) {
		logger.info("my_dashboard");
		
		proVO = service.project_detail(proVO);
		ivVO = service.invest_detail(ivVO);
		model.addAttribute("projectVO", proVO);
		model.addAttribute("investVO", ivVO);
		
		return "mypage/my_dashboard";
	}
	
	@RequestMapping(value = "/my_depo_mgn", method = RequestMethod.GET)
	public String my_depo_mgn() {
		logger.info("my_depo_mgn");
				
		return "mypage/my_depo_mgn";
	}
	
//	@RequestMapping(value = "/my_invest_list", method = RequestMethod.GET)
//	public String my_invest_list(Model modelVO) {
//		logger.info("my_invest_list");
//		vo = SqlSession.selectOne(MypageMapper.InvestList, vo);
//		int successCnt = 0;
//		if(vo != null && vo.getMbr_no() != null && !vo.getMbr_no().equals("")) {
//			successCnt = 1;
//			session.setAttribute("usrSesn", vo);
//		}
//		out.print(successCnt);
//	
//
//	scan
//		int count = 0;
//		if(count == 1) {
//			
//		} else if (count == 2) {
//			
//		}
//		proVO = service.project_detail(proVO);
//		ivVO = service.invest_detail(ivVO);
//		model.addAttribute("projectVO", proVO);
//		model.addAttribute("investVO", ivVO);
//		return "mypage/my_invest_list";
//	}
	
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
	
//	@RequestMapping(value = "/my_", method = RequestMethod.GET)
//	public String my_modify() {
//		logger.info("my_modify");
//				
//		return "mypage/my_modify";
//	
}//class