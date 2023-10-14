package kr.co.service;

import java.util.List;

import kr.co.domain.MemberDTO;

public interface MemberService {
	public abstract void register(MemberDTO member);
	public abstract MemberDTO get(long m_no); 
	public abstract List<MemberDTO> getList(); 
	
	public abstract boolean remove(long m_no); 
	public abstract boolean modify(MemberDTO member); 
	
	public abstract MemberDTO login(MemberDTO member);
}
