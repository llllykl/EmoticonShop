package kr.co.domain;

import lombok.Data;

@Data
public class BuyDTO {
	private Long b_no; // ���Ź�ȣ
	private Long b_mno; // ������ ȸ����ȣ
	private Long b_pno; // ������ ��ǰ��ȣ
	private String b_name; // ������ ��ǰ��
	private String b_price; // ������ ��ǰ����
	private String b_image; // ������ ��ǰ�̹�����
	private String b_regdate; // ��������
}
