package kr.co.creator.loan;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.DocumentVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.RepayVO;

@Repository
public class LoanDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int documentInsert(DocumentVO dvo) {
		System.out.println("dao - documentInsert");
		int cnt = 0;
		cnt = sqlSession.insert("LoanMapper.documentInsert", dvo);
		return cnt;
	}//boardInsert

	public int update_project(ProjectVO pvo) {
		int update_project_yn = 0;
		update_project_yn = sqlSession.update("LoanMapper.update_project", pvo);
		return update_project_yn;
	}//update_project

	public String RepaySelect(RepayVO vo) {
		String rvo = sqlSession.selectOne("LoanMapper.RepaySelect", vo);
		return rvo;
	}

	public int update_guarantee(GuaranteeVO gvo) {
		int gnt = 0;
		gnt = sqlSession.update("LoanMapper.update_guarantee", gvo);
		return gnt;
	}

	public int applyLoanInsert(ProjectVO pvo) {
		int cnt = 0;
		cnt = sqlSession.insert("LoanMapper.ApplyLoanInsert", pvo);
		return cnt;
	}

	public int applyLoanInsert1(ProjectVO pvo) {
		int cnt = 0;
		cnt = sqlSession.insert("LoanMapper.ApplyLoanInsert1", pvo);
		return cnt;
	}

}//class