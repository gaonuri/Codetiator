package kr.co.creator.support;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.NoticeVO;

@Service
public class SupportService {

	@Autowired
	SupportDAO dao;

	public int supportInsert(NoticeVO vo) {
		int count = 0;
		count = dao.supportInsert(vo);
		return count;
	}//noticeInsert

	public List<NoticeVO> supportList() {
		List<NoticeVO> support = null;
		support = dao.supportList();
		return support;
	}//boardList

}//class