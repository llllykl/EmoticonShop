package kr.co.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadDTO {
	private Long i_no;
	private String i_name;
	private Long i_pno;
	private MultipartFile file;
}
