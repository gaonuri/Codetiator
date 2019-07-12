package kr.co.creator.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.InvestVO;

@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<InvestVO> investList() {
		List<InvestVO> list = null;
//		list = sqlSession.selectList("");
		return list;
	}//investlist
}//class