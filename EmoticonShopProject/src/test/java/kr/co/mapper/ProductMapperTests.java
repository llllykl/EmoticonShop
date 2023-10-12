package kr.co.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.domain.ProductDTO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {
	
	@Setter(onMethod = @__({ @Autowired }))
	private ProductMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(product -> log.info(product));
	}
	
	/*
	@Test
	public void testInsert() {
		ProductDTO product = new ProductDTO();
		product.setP_name("새로 등록한 이모티콘 이름");
		product.setP_image("새로 등록한 이모티콘 이미지");
		product.setP_creator("새로 등록한 이모티콘 제작자");
		product.setP_price("3000");
		product.setP_regdate("2023-10-08");
		//product.setP_readcount(Integer.parseInt("0"));
		mapper.insert(product);
		log.info(product);
	} 
	*/
	/*
	@Test
	public void testInsertSelectKey() {
		ProductDTO product = new ProductDTO();
		product.setP_name("이모티콘 이름");
		product.setP_image("이모티콘 이미지");
		product.setP_creator("이모티콘 제작자");
		product.setP_price("3000");
		product.setP_regdate("2023-10-08");
		mapper.insertSelectKey(product);
		log.info(product);
	}
	*/
	/*
	@Test
	public void testRead() {
		// 존재하는 게시물 번호로 테스트
		ProductDTO product = mapper.read(5L);
		log.info(product);
	}
	*/
	@Test
	public void testDelete() {
		log.info("DELTE COUNT: " + mapper.delete(2L));
	}
	@Test
	public void testUpdate() {
		ProductDTO product = new ProductDTO();
		product.setP_no(1L);
		product.setP_name("수정된 이모티콘 이름");
		product.setP_image("수정된 이모티콘 사진");
		product.setP_creator("수정된 이모티콘 제작자");
		product.setP_price("5000");
		product.setP_regdate("2023-11-11");
		int count = mapper.update(product);
		log.info("UPDATE COUNT: " + count);
	}
	
}
