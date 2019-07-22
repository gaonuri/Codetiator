package kr.co.creator.invest;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.ProjectVO;

@Controller
public class InvestController {
	
	private static final Logger logger = LoggerFactory.getLogger(InvestController.class);
	
	@Autowired
	InvestService investService;
	
	@RequestMapping(value = "/invest", method = RequestMethod.GET)
	public String invest(Model model, AccountVO vo) {
		logger.info("invest");

		System.out.println("Controller1111111111 : " + vo);
		vo = investService.invest(vo);
		System.out.println("Controller2222222222 : " + vo);
		model.addAttribute("accountVO", vo);
		
		return "invest/invest";
	}//invest
	
	@RequestMapping(value = "/invest_guide", method = RequestMethod.GET)
	public String invest_guide() {
		logger.info("invest_guide");
		
		return "invest/invest_guide";
	}
	
	@RequestMapping(value = "/invest_list", method = RequestMethod.GET)
	public String invest_list(Model model) {
		logger.info("invest_list");
		
		List<ProjectVO> list = null;
		list = investService.invest_list();
		model.addAttribute("investList", list);
		
		return "invest/invest_list";
	}//invest_list
	
	@RequestMapping(value = "/invest_detail", method = RequestMethod.GET)
	public String invest_detail(Model model, ProjectVO proVO, GuaranteeVO guaVO) {
		logger.info("invest_detail");
		
		proVO = investService.project_detail(proVO);
		guaVO = investService.guarantee_detail(proVO, guaVO);
		model.addAttribute("projectVO", proVO);
		model.addAttribute("guaranteeVO", guaVO);
		
		return "invest/invest_detail";
	}//invest_detail
	
	@RequestMapping(value = "/invest_finish", method = RequestMethod.GET)
	public String invest_finish(Model model) {
		logger.info("invest_finish");
		
		List<ProjectVO> list = null;
		list = investService.invest_finish();
		model.addAttribute("investFinish", list);
		
		return "invest/invest_finish";
	}//invest_finish
}//class