package kr.co.mapper;

import java.util.List;

import kr.co.domain.MemberDTO;

public interface MemberMapper {
//	public abstract List<MemberDTO> getList();
//@Select("select * from member where m_no > 0")
	public abstract void register(MemberDTO dto) throws Exception; // 회원가입 
	public abstract MemberDTO read(Long m_no) throws Exception; // 회원정보
	public abstract MemberDTO login(MemberDTO dto) throws Exception; // 로그인
	public abstract void memberUpdate(MemberDTO dto)throws Exception; // 정보수정
	public abstract void memberDelete(MemberDTO dto)throws Exception; // 회원탈퇴
	public abstract int passChk(MemberDTO dto) throws Exception; // 비밀번호 체크
	public abstract int idChk(MemberDTO dto) throws Exception; // id 중복체크
	
	public abstract List<MemberDTO> getList(); // 회원전체출력
	
}
