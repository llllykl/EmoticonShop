package kr.co.domain;

import java.nio.file.Path;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadDTO {
	private Long i_no;
	private Long i_pno;
	private String i_name;
	private String i_uploadpath;
}
