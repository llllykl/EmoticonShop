package kr.co.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadDTO {
	private int i_uuid;
	private Long i_pno;
	private String i_name;
	private String i_uploadpath;
	//private MultipartFile file;
}
