package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.MemberDTO;
import kr.co.mapper.MemberMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service 
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_=@Autowired)
	private MemberMapper mapper;  

	@Override
	public void register(MemberDTO member) { 
		log.info("register..." + member);
	}

	@Override
	public MemberDTO get(long m_no) {
		log.info("get..." + m_no);
		return mapper.read(m_no);
	}

	@Override
	public List<MemberDTO> getList() {
		log.info("getlist...");
		return mapper.getList();
	}

	@Override
	public boolean remove(long m_no) { 
		log.info("remove..." + m_no);
		return mapper.delete(m_no) == 1;
	}

	@Override
	public boolean modify(MemberDTO member) {
		log.info("modify..."+member);
		return mapper.update(member) == 1;
	}
	
	@Override
	public MemberDTO login(MemberDTO member) { 
		return mapper.memberLogin(member);
	}

}
