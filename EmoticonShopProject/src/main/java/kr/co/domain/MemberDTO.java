package kr.co.domain;

import lombok.Data;

@Data
public class MemberDTO {
	private Long m_no; // ȸ����ȣ
	private String m_id; // ȸ��id
	private String m_pw; // ȸ��pw
	private String m_name; // ȸ���̸�
	private String m_phone; // ȸ������ȣ
	private String m_email; // ȸ���̸���
	private int m_gender; // ȸ������
	private String m_point; // ȸ������Ʈ
	private int m_access; // ����: ȸ�� 0, ������ 1
}
