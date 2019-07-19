package kr.co.creator.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.ProjectVO;

@Service
public class MypageService {

	@Autowired
	MypageDAO dao;

	public List<InvestVO> assetsList() {
		List<InvestVO> list = null;
		list = dao.assetsList();
		return list;
	}//assetsList

	public ProjectVO project_detail(ProjectVO proVO) {
<<<<<<< HEAD
		proVO = dao.project_detail(proVO);
=======
		proVO = MypageDAO.project_detail(proVO);
>>>>>>> branch 'master' of https://github.com/gaonuri/Codetiator.git
		return proVO;
	}//project_detail

	public InvestVO invest_detail(InvestVO ivVO) {
		ivVO = dao.invest_detail(ivVO);
		return ivVO;
	}
}//class