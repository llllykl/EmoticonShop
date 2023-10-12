package kr.co.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.domain.ProductDTO;

public interface ProductMapper {	
	public abstract ProductDTO read(Long p_no);
	public abstract List<ProductDTO> getList();
	public abstract void insert(ProductDTO product);
	public abstract void insertSelectKey(ProductDTO product);
	public abstract int delete(Long p_no);
	public abstract int update(ProductDTO product);
}
