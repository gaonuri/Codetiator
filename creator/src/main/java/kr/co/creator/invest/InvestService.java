package kr.co.creator.invest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.GuaranteeVO;
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

	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = investDAO.project_detail(proVO);
		
		return proVO;
	}//project_detail

	public GuaranteeVO guarantee_detail(ProjectVO proVO, GuaranteeVO guaVO) {
		guaVO = investDAO.guarantee_detail(proVO, guaVO);
		
		return guaVO;
	}//guarantee_detail

	public List<ProjectVO> invest_finish() {
		List<ProjectVO> list = null;
		list = investDAO.invest_finish();
		
		return list;
	}//invest_finish
}//class