package kr.co.creator.loan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.DocumentVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.RepayVO;

@Service
public class LoanDAOService {
	
	@Autowired
	LoanDAO dao;
	
	public int documentInsert(DocumentVO dvo) {
		int cnt = 0;
		cnt = dao.documentInsert(dvo);
		return cnt;
	}

	public int update_project(ProjectVO pvo) {
		int update_project_yn = 0;
		update_project_yn = dao.update_project(pvo);
		return update_project_yn;
	}//update_project
	
	public String RepaySelect(RepayVO vo) {
		String rvo = dao.RepaySelect(vo);
		return rvo;
	}
	
	public int update_guarantee(GuaranteeVO gvo) {
		int gnt = 0;
		gnt = dao.update_guarantee(gvo);
		return gnt;
	}

	public int applyLoanInsert(ProjectVO pvo) {
		int cnt = 0;
		cnt = dao.applyLoanInsert(pvo);
		return cnt;
	}
	
	public int applyLoanInsert1(ProjectVO pvo) {
		int cnt = 0;
		cnt = dao.applyLoanInsert1(pvo);
		return cnt;
	}	

}//class
