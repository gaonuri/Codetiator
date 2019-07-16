package kr.co.creator.invest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.ProjectVO;

@Service
public class InvestService {

	@Autowired
	InvestDAO investDAO;

	public void invest() {
		investDAO.invest();
	}

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = investDAO.invest_list();
		
		return list;
	}

	public ProjectVO project_detail(ProjectVO vo) {
		vo = investDAO.project_detail(vo);
		
		return vo;
	}

	public List<ProjectVO> invest_finish() {
		List<ProjectVO> list = null;
		list = investDAO.invest_finish();
		
		return list;
	}
}//class