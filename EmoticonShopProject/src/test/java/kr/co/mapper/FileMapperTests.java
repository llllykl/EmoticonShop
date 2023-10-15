package kr.co.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class FileMapperTests {
	
	@Setter(onMethod = @__({ @Autowired }))
	private FileMapper mapper;
	
	// 이미지 정보 반환
//	@Test
//	public void getImageListTests() {
//		Long p_no = (long)3;
//		System.out.println("이미지 정보: " + mapper.getImageList(p_no));
//	}
	
	@Test
	public void getImageListTests1() {
		System.out.println("이미지 정보: " + mapper.getImageList1());
	}
}
