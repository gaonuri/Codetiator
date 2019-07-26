package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;

@Service
public class MypageService {

	@Autowired
	MypageDAO dao;

	public List<MypageVO> invest_detail() {
		List<MypageVO> invest = null;
		invest = dao.invest_detail();
		return invest;
	}
	
	public int myPageModify(MemberVO vo) {
		int cnt = 0;
		cnt = dao.myPageModify(vo);
		return cnt; 
	}//MemberVO	
	
}//class



