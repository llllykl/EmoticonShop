package kr.co.domain;

import lombok.Data;

@Data
public class ProductDTO {
	private Long p_no; // ��ǰ��ȣ
	private String p_name; // ��ǰ��
	private String p_price; // ��ǰ����
	private String p_image; // ��ǰ�̹�����
	private String p_creator; // �����ڸ�
	private String p_regdate; // ��ǰ�����
	private Long p_readcount; // ��ǰ��ȸ��
}
