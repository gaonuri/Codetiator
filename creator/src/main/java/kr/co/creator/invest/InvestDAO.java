package kr.co.creator.invest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.GuaranteeVO;
import kr.co.creator.vo.InvestVO;
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

	public List<ProjectVO> invest_list() {
		List<ProjectVO> list = null;
		list = sqlSession.selectList("InvestMapper.investList");
		
		return list;
	}//invest_list

	public InvestVO invest_detail(InvestVO inVO) {
		System.out.println("DAO11111111111111111 : " + inVO);
		inVO = sqlSession.selectOne("InvestMapper.investDetail", inVO);
		System.out.println("DAO22222222222222222 : " + inVO);
		
		return inVO;
	}//invest_detail

	public AccountVO acount_detail(AccountVO accVO) {
		accVO = sqlSession.selectOne("InvestMapper.accountDetail", accVO);
		
		return accVO;
	}//acount_detail
	
	public ProjectVO project_detail(ProjectVO proVO) {
		proVO = sqlSession.selectOne("InvestMapper.projectDetail", proVO);
		
		return proVO;
	}//project_detail

	public GuaranteeVO guarantee_detail(GuaranteeVO guaVO) {
		guaVO = sqlSession.selectOne("InvestMapper.guaranteeDetail", guaVO);
		
		return guaVO;
	}//guarantee_detail

	public List<ProjectVO> invest_finished() {
		List<ProjectVO> list = null;
		list = sqlSession.selectList("InvestMapper.investFinished");
		
		return list;
	}//invest_finished

	public int deposit_update(AccountVO accVO) {
		int count = 0;
		//System.out.println("DAO11111111111 : " + accVO);
		count = sqlSession.update("InvestMapper.depositUpdate", accVO);
		//System.out.println("DAO22222222222 : " + accVO);
		
		return count;
	}//deposit_update

	public int invest_price_insert(InvestVO inVO) {
		int count = 0;
		System.out.println("invest_price_insert_DAO22222222222222222222222222222222 : " + inVO);
		count = sqlSession.insert("InvestMapper.investPriceInsert", inVO);
		System.out.println("invest_price_insert_DAO33333333333333333333333333333333 : " + inVO);
		
		return count;
	}//invest_price_insert

	public int current_price_update(ProjectVO proVO) {
		int count = 0;
		System.out.println("current_price_update_DAO5555555555555555555555555555555 : " + proVO);
		count = sqlSession.update("InvestMapper.currentPriceUpdate", proVO);
		System.out.println("current_price_update_DAO6666666666666666666666666666666 : " + proVO);
		
		return count;
	}//current_price_update
}//class