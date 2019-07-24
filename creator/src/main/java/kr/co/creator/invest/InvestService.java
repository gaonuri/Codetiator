package kr.co.creator.invest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Service
public class InvestService {

	@Autowired
	InvestDAO investDAO;

//	public AccountVO invest(AccountVO vo) {
//		System.out.println("Service111111111 : " + vo);
//		vo = investDAO.invest(vo);
//		System.out.println("Service222222222 : " + vo);
//		return vo;
//	}//invest

	public AccountVO acount_detail(AccountVO accVO) {
		System.out.println("DAO111111111 : " + accVO);
		accVO = investDAO.acount_detail(accVO);
		System.out.println("DAO222222222 : " + accVO);
		return accVO;
	}

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = investDAO.invest_list();
		
		return list;
	}//invest_list

	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = investDAO.project_detail(proVO);
		
		return proVO;
	}//project_detail

	public GuaranteeVO guarantee_detail(ProjectVO proVO, GuaranteeVO guaVO) {
		guaVO = investDAO.guarantee_detail(proVO, guaVO);
		
		return guaVO;
	}//guarantee_detail

	public List<ProjectVO> invest_finished() {
		List<ProjectVO> list = null;
		list = investDAO.invest_finished();
		
		return list;
	}//invest_finished

	public int deposit_update(AccountVO accVO) {
		int count = 0;
		count = investDAO.deposit_update(accVO);
		return count;
	}//deposit_update
}//class