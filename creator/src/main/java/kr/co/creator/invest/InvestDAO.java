package kr.co.creator.invest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.ProjectVO;

@Repository
public class InvestDAO {
	
	@Autowired
	SqlSession sqlSession;

//	public AccountVO invest(AccountVO vo) {
//		System.out.println("Service111111111 : " + vo);
//		vo = sqlSession.selectOne("InvestMapper.accountDetail", vo);
//		System.out.println("Service222222222 : " + vo);
//		
//		return vo;
//	}//invest

	public AccountVO acount_detail(AccountVO accVO) {
		accVO = sqlSession.selectOne("InvestMapper.accountDetail", accVO);
		return accVO;
	}

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = sqlSession.selectList("InvestMapper.investList");
		
		return list;
	}//invest_list
	
	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = sqlSession.selectOne("InvestMapper.projectDetail", proVO);
		
		return proVO;
	}//project_detail

	public GuaranteeVO guarantee_detail(ProjectVO proVO, GuaranteeVO guaVO) {
		guaVO = sqlSession.selectOne("InvestMapper.guaranteeDetail", proVO);
		
		return guaVO;
	}//guarantee_detail

	public List<ProjectVO> invest_finish() {
		List<ProjectVO> list = null;
		list = sqlSession.selectList("InvestMapper.investFinish");
		
		return list;
	}//invest_finish
}//class