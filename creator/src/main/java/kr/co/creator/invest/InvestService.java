package kr.co.creator.invest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.InvestVO;
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

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = investDAO.invest_list();
		
		return list;
	}//invest_list

	public ProjectVO project_calc() {
		ProjectVO proCalcVO = null;
		proCalcVO = investDAO.project_calc();
		
		return proCalcVO;
	}//project_calc

	public InvestVO invest_calc() {
		InvestVO inVO = null;
		inVO = investDAO.invest_calc();
		
		return inVO;
	}//invest_calc

	public InvestVO invest_detail(InvestVO inVO) {
		inVO = investDAO.invest_detail(inVO);
		
		return inVO;
	}//invest_detail

	public AccountVO acount_detail(AccountVO accVO) {
		System.out.println("Service111111111 : " + accVO);
		accVO = investDAO.acount_detail(accVO);
		System.out.println("Service222222222 : " + accVO);
		
		return accVO;
	}//acount_detail

	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = investDAO.project_detail(proVO);
		
		return proVO;
	}//project_detail

	public GuaranteeVO guarantee_detail(GuaranteeVO guaVO) {
		guaVO = investDAO.guarantee_detail(guaVO);
		
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

	public int invest_price_insert(InvestVO inVO) {
		int count = 0;
		count = investDAO.invest_price_insert(inVO);
		
		return count;
	}//invest_price_insert

	public int current_price_update(ProjectVO proVO) {
		int count = 0;
		count = investDAO.current_price_update(proVO);
		
		return count;
	}//current_price_update
}//class