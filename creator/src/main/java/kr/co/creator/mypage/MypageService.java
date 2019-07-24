package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Service
public class MypageService {

	@Autowired
	MypageDAO dao;

	public List<MypageVO> invest_detail(UserVO uvo) {
		List<MypageVO> invest = null;
		invest = dao.invest_detail(uvo);
		return invest;
	}
}//class