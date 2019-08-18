package kr.co.creator.project_management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.ProjectVO;

@Service
public class ProjectManagementService {

	@Autowired
	ProjectManagementDAO projectManagementDAO;

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = projectManagementDAO.invest_list();
		
		return list;
	}//invest_list
	
	public ProjectVO project_calc() {
		ProjectVO proCalcVO = null;
		proCalcVO = projectManagementDAO.project_calc();
		
		return proCalcVO;
	}//project_calc

	public InvestVO invest_calc() {
		InvestVO inVO = null;
		inVO = projectManagementDAO.invest_calc();
		
		return inVO;
	}//invest_calc
	
	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = projectManagementDAO.project_detail(proVO);
		
		return proVO;
	}//project_detail
	
	public InvestVO invest_detail(InvestVO inVO) {
		inVO = projectManagementDAO.invest_detail(inVO);
		
		return inVO;
	}//invest_detail
	
	public GuaranteeVO guarantee_detail(GuaranteeVO guaVO) {
		guaVO = projectManagementDAO.guarantee_detail(guaVO);
		
		return guaVO;
	}//guarantee_detail

	public int project_success(ProjectVO pvo) {
		int cnt = 0;
		cnt = projectManagementDAO.project_success(pvo);
		return cnt;
	}

	public int project_delete(ProjectVO pvo) {
		int cnt = 0;
		cnt = projectManagementDAO.project_delete(pvo);
		return cnt;
	}
}//class