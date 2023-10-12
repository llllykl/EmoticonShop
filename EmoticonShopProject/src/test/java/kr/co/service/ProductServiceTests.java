package kr.co.service;

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
public class ProductServiceTests {
	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	
	@Test
	public void testRegister() {
		ProductDTO product = new ProductDTO();
		product.setP_name("새 이모티콘");
		product.setP_creator("새 이모티콘 창작자");
		product.setP_image("새 이모티콘 이미지");
		product.setP_price("7000");
		product.setP_regdate("2023-10-09");
		service.register(product);
		log.info("등록한 이모티콘 번호: " + product.getP_no());
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(product -> log.info(product));
	}
	
	@Test
	public void testGet() {
		log.info(service.get(1L));
	}
	
//	@Test
//	public void testDelete() {
//		log.info("REMOVE RESULT: " + service.remove(5L));
//	}
	
	@Test
	public void testUpdate() {
		// 상품 우선 조회
		ProductDTO product = service.get(4L);
		if (product == null) {
			return;
		}
		product.setP_readcount(2);
		log.info("MODIFY RESULT: " + service.modify(product));
	}
}
