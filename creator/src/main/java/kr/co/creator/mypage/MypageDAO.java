package kr.co.creator.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.creator.vo.AccountVO;
import kr.co.creator.vo.Busi_userVO;
import kr.co.creator.vo.FindPwdVO;
import kr.co.creator.vo.InOutVO;
import kr.co.creator.vo.InvestVO;
import kr.co.creator.vo.MemberVO;
import kr.co.creator.vo.MypageVO;
import kr.co.creator.vo.ProjectVO;
import kr.co.creator.vo.UserVO;

@Repository
public class MypageDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<MypageVO> invest_detail(MemberVO userVO) {
		List<MypageVO> invest = null;
		invest = sqlSession.selectList("MypageMapper.InvestList", userVO);
		return invest;
	}//invest_detail

	public List<ProjectVO> loan_list(MemberVO userVO) {
		List<ProjectVO> loan = null;
		loan = sqlSession.selectList("MypageMapper.loanList", userVO);
		return loan;
	}//loan_list
	
	public AccountVO account(MemberVO userVO) {
		AccountVO accVO = null;
		accVO = sqlSession.selectOne("MypageMapper.Account", userVO);
		return accVO;
	}//AccountVO
	
	public InOutVO inout(MemberVO userVO) {
		InOutVO ioVO = null;
		ioVO = sqlSession.selectOne("MypageMapper.Inout", userVO);
		return ioVO;
	}//InOutVO
	
	public int myPageModifyU(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("MypageMapper.MyPageModifyU", vo);
		return cnt;
	}//myPageModifyU
	
	public int myPageModifyB(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("MypageMapper.MyPageModifyB", vo);
		return cnt;
	}//myPageModifyB

	public UserVO user(MemberVO userVO) {
		UserVO useVO = null;
		useVO = sqlSession.selectOne("MypageMapper.User", userVO);
		return useVO;
	}//UserVO
	
	public Busi_userVO busi(MemberVO userVO) {
		Busi_userVO busiVO = null;
		busiVO = sqlSession.selectOne("MypageMapper.Busi", userVO);
		return busiVO;
	}//Busi_userVO

	public int emailcert(UserVO vo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("LoginMapper.findPwdChk", vo);
		return cnt;
	}//findPwdChk

	public int userDataUpdate(MemberVO vo) {
		int cnt = 0;
		cnt = sqlSession.update("MypageMapper.UserDataUpdate", vo);
		return cnt;
	}//userDataUpdate
	
	public int userDataUpdate1(MemberVO vo) {
		int cnt1 = 0;
		cnt1 = sqlSession.update("MypageMapper.UserDataUpdate1", vo);
		return cnt1;
	}//userDataUpdate1

	public int bankNumChk(AccountVO accvo) {
		int cnt = 0;
		cnt = sqlSession.selectOne("MypageMapper.bankNumChk", accvo);
		return cnt;
	}//bankNumChk

		public int depo_update(AccountVO accVO) {
		int count = 0;
		count = sqlSession.update("MypageMapper.depoUpdate", accVO);
		
		return count;
	}//deposit_update

//		public int account_insert(AccountVO accVO) {
//			int count = 0;
//			count = sqlSession.insert("MypageMapper.accountinsert", accVO);
//			return count;
//		}

		public int useraccount_insert(AccountVO acVO) {
			int count = 0;
			count = sqlSession.insert("MypageMapper.useraccountinsert", acVO);
			return count;
		}
		
		public int userinoutinsert(InOutVO ioVO) {
			int count = 0;
			count = sqlSession.insert("MypageMapper.userinoutinsert", ioVO);
			return count;
		}

		public int busiaccount_insert(AccountVO acVO) {
			int count = 0;
			count = sqlSession.insert("MypageMapper.busiaccountinsert", acVO);
			return count;
		}
		
		public int busiinoutinsert(InOutVO ioVO) {
			int count = 0;
			count = sqlSession.insert("MypageMapper.busiinoutinsert", ioVO);
			return count;
		}

		public AccountVO informaiton(MemberVO memVO) {
			AccountVO accVO = null;
			accVO = sqlSession.selectOne("MypageMapper.account_list", memVO);
			return accVO;
		}
		
	
}//class


