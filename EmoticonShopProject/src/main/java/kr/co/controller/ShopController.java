package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/shop/*")
public class ShopController {
	@GetMapping("")
	public String index() {
		return "./shop/index";
	}
	@GetMapping("/newpage")
	public String newPage() {
		return "./shop/newPage";
	}
	@GetMapping("/poppage") 
	public String popPage() {
		return "./shop/popPage";
	}
	@GetMapping("/mypage") 
	public String myPage() {
		return "./shop/profile-details";
	}
	@GetMapping("/order")
	public String order() {
		return "./shop/order";
	}
	@GetMapping("/memberupdate") 
	public String memberUpdate() {
		return "./shop/member-update";
	}
	@GetMapping("/memberdelete")
	public String memberDelete() {
		return "./shop/member-delete";
	}
}
