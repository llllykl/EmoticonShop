package kr.co.domain;

import lombok.Data;

@Data
public class MemberDTO {
	private Long m_no; // 회원번호
	private String m_id; // 회원id
	private String m_pw; // 회원pw
	private String m_name; // 회원이름
	private String m_phone; // 회원폰번호
	private String m_email; // 회원이메일
	private int m_gender; // 회원성별
	private String m_point; // 회원포인트
	private int m_access; // 권한: 회원 0, 관리자 1
}
