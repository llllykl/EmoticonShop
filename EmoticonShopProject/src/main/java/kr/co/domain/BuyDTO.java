package kr.co.domain;

import lombok.Data;

@Data
public class BuyDTO {
	private Long b_no; // ���Ź�ȣ
	private Long m_no; // ������ ȸ����ȣ
	private Long p_no; // ������ ��ǰ��ȣ
	private String p_name; // ������ ��ǰ��
	private String p_price; // ������ ��ǰ����
	private String p_image; // ������ ��ǰ�̹�����
	private String b_regdate; // ��������
}
