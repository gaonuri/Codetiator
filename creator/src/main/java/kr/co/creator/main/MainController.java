package kr.co.creator.main;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.ProjectVO;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	MainService mainService;
	
//	@RequestMapping(value = "/main", method = RequestMethod.GET)
//	public String main(Model model, ProjectVO proVO) {
//		logger.info("main");
//		
//		System.out.println("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111" + proVO.getAd_grade());
////		if(proVO.getAd_grade() == null) {
////			proVO.setAd_grade("1");
////		}
//		
//		List<ProjectVO> list = null;
//		list = mainService.project_list(proVO);
//		model.addAttribute("projectList", list);
//		
//		return "main/main";
//	}//main
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model) {
		logger.info("main");
		
		List<ProjectVO> list1 = null;
		List<ProjectVO> list2 = null;
		List<ProjectVO> list3 = null;
		list1 = mainService.project_list1();
		list2 = mainService.project_list2();
		list3 = mainService.project_list3();
		model.addAttribute("projectList1", list1);
		model.addAttribute("projectList2", list2);
		model.addAttribute("projectList3", list3);
		
		return "main/main";
	}//main
	
	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2() {
		logger.info("main2");
		
		return "main/main2";
	}//main2
	
	@RequestMapping(value = "/main_new", method = RequestMethod.GET)
	public String main_new() {
		logger.info("main_new");
		
		return "main/main_new";
	}//main_new
	
	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public String intro() {
		logger.info("intro");
		
		return "intro/intro";
	}//intro
}//class