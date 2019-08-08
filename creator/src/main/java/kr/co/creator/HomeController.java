package kr.co.creator;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.creator.vo.ProjectVO;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("main");
				
		return "main";
	}//main
	
	@RequestMapping(value = "/datetest", method = RequestMethod.GET)
	public String dateTest(Model model, ProjectVO proVO) {
		logger.info("dateTest");
		
		List<ProjectVO> list = sqlSession.selectList("TestSelectMapper.investList");
		proVO = sqlSession.selectOne("TestSelectMapper.projectDetail", proVO);
		model.addAttribute("projectList", list);
		model.addAttribute("proVO", proVO);
		
		return "datetest";
	}//dateTest
}