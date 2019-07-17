package kr.co.creator.support;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.NoticeVO;

@Repository
public class SupportDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int supportInsert(NoticeVO vo) {
		System.out.println("dao - supportInsert");
		int count = 0;
		count = sqlSession.insert("SupportMapper.supportInsert", vo);
		System.out.println("dao - count : "+ count);
		return count;
	}//noticeInsert

	public List<NoticeVO> supportList() {
		List<NoticeVO> support = null;
		support = sqlSession.selectList(
							"SupportMapper.supportList");
		return support;
	}//supportList
	
	public List<NoticeVO> supportList2() {
		List<NoticeVO> support = null;
		support = sqlSession.selectList(
							"SupportMapper.supportList2");
		return support;
	}//supportList2
	
	public List<NoticeVO> supportList3() {
		List<NoticeVO> support = null;
		support = sqlSession.selectList(
							"SupportMapper.supportList3");
		return support;
	}//supportList3

	public NoticeVO totalDetail(NoticeVO vo) {
		vo = sqlSession.selectOne(
				"SupportMapper.totalDetail", vo);
		return vo;
	}//totalDetail
}//class