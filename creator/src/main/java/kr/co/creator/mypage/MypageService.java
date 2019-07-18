package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.InvestVO;

@Service
public class MypageService {

	@Autowired
	MypageDAO dao;

	public List<InvestVO> assetsList() {
		List<InvestVO> list = null;
		list = dao.assetsList();
		return list;
	}//assetList
}//class