package kr.co.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductDTO {
	private Long p_no; // ��ǰ��ȣ
	private String p_name; // ��ǰ��
	private String p_price; // ��ǰ����
	private String p_image; // ��ǰ�̹�����
	private List<UploadDTO> imageList; // �� �̹��� ����
	private String p_creator; // �����ڸ�
	private String p_regdate; // ��ǰ�����
	private int p_readcount; // ��ǰ��ȸ��
	private String p_etc; // ��Ÿ����
}
