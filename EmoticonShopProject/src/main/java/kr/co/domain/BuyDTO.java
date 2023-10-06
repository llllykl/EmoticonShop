package kr.co.domain;

import lombok.Data;

@Data
public class BuyDTO {
	private Long b_no; // 구매번호
	private Long b_mno; // 구매한 회원번호
	private Long b_pno; // 구매한 상품번호
	private String b_name; // 구매한 상품명
	private String b_price; // 구매한 상품가격
	private String b_image; // 구매한 상품이미지명
	private String b_regdate; // 구매일자
}
