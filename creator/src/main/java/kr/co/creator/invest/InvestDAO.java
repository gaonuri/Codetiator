package kr.co.creator.invest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Repository
public class InvestDAO {
	
	@Autowired
	SqlSession sqlSession;

//	public AccountVO invest(AccountVO vo) {
//		System.out.println("DAO111111111 : " + vo);
//		vo = sqlSession.selectOne("InvestMapper.accountDetail", vo);
//		System.out.println("DAO222222222 : " + vo);
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

	public List<ProjectVO> invest_finished() {
		List<ProjectVO> list = null;
		list = sqlSession.selectList("InvestMapper.investFinish");
		
		return list;
	}//invest_finished

	public int deposit_update(AccountVO accVO) {
		int count = 0;
		System.out.println("DAO11111111111 : " + accVO);
		count = sqlSession.update("InvestMapper.depositUpdate", accVO);
		System.out.println("DAO22222222222 : " + accVO);
		return count;
	}//deposit_update
}//class