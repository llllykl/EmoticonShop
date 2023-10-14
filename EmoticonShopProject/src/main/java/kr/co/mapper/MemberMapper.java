package kr.co.mapper;

import java.util.List;

import kr.co.domain.MemberDTO;

public interface MemberMapper {
//	public abstract List<MemberDTO> getList();
//@Select("select * from member where m_no > 0")
	public abstract List<MemberDTO> getList(); //紐⑸�
	public abstract void insertSelectKey(MemberDTO member); //Create
	public abstract MemberDTO read(long m_no); //Read
	public abstract int update(MemberDTO member); //Update
	public abstract int delete(long m_no); //Delete
	
	public abstract MemberDTO memberLogin(MemberDTO member);
}
