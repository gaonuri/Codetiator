package kr.co.creator.project_management;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.invest.InvestService;
import kr.co.creator.vo.GuaranteeVO;
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
	
	@RequestMapping(value = "/project_detail_mgn", method = RequestMethod.GET)
	public String project_detail_mgn(Model model, HttpSession session, ProjectVO proVO, GuaranteeVO guaVO, InvestVO inVO) {
		logger.info("invest_detail");
		
		proVO = projectManagementService.project_detail(proVO);
		guaVO = projectManagementService.guarantee_detail(guaVO);
		inVO  = projectManagementService.invest_detail(inVO);
					
		model.addAttribute("proVO", proVO);
		model.addAttribute("guaVO", guaVO);
		session.setAttribute("inVO", inVO);
		//System.out.println("Controller2222222222222222222222222222222 : " + inVO.getInvest_price());
		//System.out.println("Controller2222222222222222222222222222222 : " + ((InvestVO)session.getAttribute("sess_investVO")).getInvest_price());
		return "project_management/project_detail_mgn";
	}//project_detail_mgn
	
	@RequestMapping(value = "/loan_evaluate", method = RequestMethod.GET)
	public String loan_evaluate() {
		logger.info("loan_evaluate");
				
		return "project_management/loan_evaluate";
	}
	
	@RequestMapping(value = "/project_detail_success", method = RequestMethod.POST)
	public void project_detail_success(HttpSession session, ProjectVO pvo, PrintWriter out) {
		logger.info("project_detail_success");
		int cnt = 0;
		cnt = projectManagementService.project_success(pvo);
		out.print(cnt);
		out.close();
	}//project_detail_success
	
	@RequestMapping(value = "/project_detail_delete", method = RequestMethod.POST)
	public void project_detail_delete(HttpSession session, ProjectVO pvo, PrintWriter out) {
		logger.info("project_detail_delete");
		int cnt = 0;
		cnt = projectManagementService.project_delete(pvo);
		out.print(cnt);
		out.close();
	}//project_detail_delete
}//class