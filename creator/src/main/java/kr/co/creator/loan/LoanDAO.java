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

	public int insert_project(ProjectVO pvo) {
		int insert_project_yn = 0;
		insert_project_yn = sqlSession.update("LoanMapper.update_project", pvo);
		return insert_project_yn;
	}//insert_project

	public String RepaySelect(RepayVO vo) {
		String rvo = sqlSession.selectOne("LoanMapper.RepaySelect", vo);
		return rvo;
	}

	public int guaranteeInsert(GuaranteeVO gvo) {
		int gnt = 0;
		gnt = sqlSession.insert("LoanMapper.insert_guarantee", gvo);
		return gnt;
	}

}//class