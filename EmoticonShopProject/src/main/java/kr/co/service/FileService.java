package kr.co.service;

import java.util.List;

import kr.co.domain.UploadDTO;

public interface FileService {
	// �̹��� ������ ��ȯ(no�ʿ�)
	public abstract List<UploadDTO> getImageList(Long i_pno);
	// �̹��� ������ ��ü��ȯ
	public abstract List<UploadDTO> getImageList1();

}
