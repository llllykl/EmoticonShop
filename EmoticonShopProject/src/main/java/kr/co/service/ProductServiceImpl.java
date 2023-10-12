package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.ProductDTO;
import kr.co.mapper.ProductMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service  // 비즈니스 영역 담당 객체
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Override
	public void register(ProductDTO product) {
		log.info("register..." + product);
		mapper.insertSelectKey(product);
	}

	@Override
	public ProductDTO get(Long p_no) {
		log.info("get..." + p_no);
		return mapper.read(p_no);
	}

	@Override
	public boolean modify(ProductDTO product) {
		log.info("modify..." + product);
		return mapper.update(product) == 1;
	}

	@Override
	public boolean remove(Long p_no) {
		log.info("remove..." + p_no);
		return mapper.delete(p_no) == 1;
	}

	@Override
	public List<ProductDTO> getList() {
		log.info("getList...");
		return mapper.getList();
	}

}
