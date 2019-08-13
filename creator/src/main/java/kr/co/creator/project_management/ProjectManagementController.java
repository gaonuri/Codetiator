package kr.co.creator.project_management;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.invest.InvestService;
import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.ProjectVO;

@Controller
public class ProjectManagementController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectManagementController.class);
	
	@Autowired
	ProjectManagementService projectManagementService;
	
	@RequestMapping(value = "/project_current_list", method = RequestMethod.GET)
	public String project_current_list() {
		logger.info("project_current_list");
		
		return "project_management/project_current_list";
	}
	
	@RequestMapping(value = "/project_evaluate_mgn", method = RequestMethod.GET)
	public String project_evaluate_mgn(Model model, ProjectVO proVO, ProjectVO proCalcVO, InvestVO inVO) {
		logger.info("project_evaluate_mgn");
		List<ProjectVO> list = null;
		list = projectManagementService.invest_list();
		proVO = projectManagementService.project_detail(proVO);
		proCalcVO = projectManagementService.project_calc();
		inVO = projectManagementService.invest_calc();
		model.addAttribute("investList", list);
		model.addAttribute("proVO", proVO);
		model.addAttribute("proCalcVO", proCalcVO);
		model.addAttribute("inVO", inVO);		
		return "project_management/project_evaluate_mgn";
	}
	
	@RequestMapping(value = "/loan_evaluate", method = RequestMethod.GET)
	public String loan_evaluate() {
		logger.info("loan_evaluate");
				
		return "project_management/loan_evaluate";
	}
}//class