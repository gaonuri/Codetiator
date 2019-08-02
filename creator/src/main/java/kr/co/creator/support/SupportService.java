package kr.co.creator.support;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.creator.vo.NoticeVO;

@Service
public class SupportService {

	@Autowired
	SupportDAO dao;
	
	public int supportDelete(NoticeVO vo) {
		int count = 0;
		count = dao.supportDelete(vo);
		return count;
	};
	

	public int supportInsert(NoticeVO vo) {
		int count = 0;
		count = dao.supportInsert(vo);
		return count;
	}//noticeInsert
	
	public int supportInsert2(NoticeVO vo) {
		int count = 0;
		count = dao.supportInsert2(vo);
		return count;
	}

	public List<NoticeVO> supportList() {
		List<NoticeVO> support = null;
		support = dao.supportList();
		return support;
	}//supportList

	public List<NoticeVO> supportList2(NoticeVO vo) {
		List<NoticeVO> support = null;
		support = dao.supportList2(vo);
		return support;
	}//supportList2

	public NoticeVO supportDetail(NoticeVO vo) {
		vo = dao.supportDetail(vo);
		return vo;
	}//supportDatail
	
	public NoticeVO supportDetailType(NoticeVO vo) {
		vo = dao.supportDetailType(vo);
		return vo;
	}//supportDatailType
	
}//class