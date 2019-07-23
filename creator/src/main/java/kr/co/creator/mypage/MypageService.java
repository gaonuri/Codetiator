package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;

@Service
public class MypageService {

	@Autowired
	MypageDAO dao;

	public List<MypageVO> invest_detail(MypageVO userVO) {
		List<MypageVO> invest = null;
		invest = dao.invest_detail(userVO);
		return invest;
	}
	
	public List<MypageVO> invest_detail2(MypageVO busiVO) {
		List<MypageVO> invest = null;
		invest = dao.invest_detail(busiVO);
		return invest;
	}
}//class