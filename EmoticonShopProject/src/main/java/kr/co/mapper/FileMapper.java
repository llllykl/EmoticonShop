package kr.co.mapper;

import java.util.List;

import kr.co.domain.UploadDTO;

public interface FileMapper {
	// �̹��� ������ ��ȯ (i_pno)
	public abstract List<UploadDTO> getImageList(Long i_pno);
	// �̹��� ������ ��ȯ
	public abstract List<UploadDTO> getImageList1();
}
