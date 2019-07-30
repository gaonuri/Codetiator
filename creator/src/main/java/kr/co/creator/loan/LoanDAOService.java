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

	public int insert_project(ProjectVO pvo) {
		int insert_project_yn = 0;
		insert_project_yn = dao.insert_project(pvo);
		return insert_project_yn;
	}//insert_project
	
	public RepayVO RepaySelect(RepayVO rvo) {
		rvo = dao.RepaySelect(rvo);
		return rvo;
	}
	
	public int guaranteeInsert(GuaranteeVO gvo) {
		int gnt = 0;
		gnt = dao.guaranteeInsert(gvo);
		return gnt;
	}

}//class
