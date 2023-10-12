package kr.co.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.domain.ProductDTO;
import kr.co.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/admin/*")
public class AdminController {
	private ProductService service;
	// 관리자 메인페이지
	@RequestMapping("")
	public String adminMain() {
		log.info("Admin page");
		return "./admin/admin";
	}
	
	// 상품 전체 출력
	@GetMapping("/product-list")
	public void testList(Model model) {
		log.info("product list");
		model.addAttribute("list", service.getList());
	}
	
	// 상품 등록 페이지 이동
	@GetMapping("/product-register")
	public String register() {
		return "./admin/product-register";
	}
	
	// 상품 등록 처리
	@PostMapping("/register")
	public String register(ProductDTO product, RedirectAttributes rttr) {
		log.info("register: " + product);
		service.register(product);
		rttr.addFlashAttribute("result", product.getP_no());
		return "redirect:/admin/product-list";
	}
	
	// 상품 상세 조회, 상품 수정, 상품 삭제 확인 페이지 이동
	@GetMapping({"/product-get", "/product-modify", "/product-remove"})
	public void get(@RequestParam("p_no") Long p_no, Model model) {
		log.info("/get or modify or remove");
		model.addAttribute("product", service.get(p_no));
	}
	
	// 상품 수정 처리
	@PostMapping("/modify")
	public String modify(ProductDTO product, RedirectAttributes rttr) {
		log.info("modify: " + product);
		
		if (service.modify(product)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/product-list";
	}
	
	// 상품 삭제 처리
	@PostMapping("/remove")
	public String remove(@RequestParam("p_no") Long p_no, RedirectAttributes rttr) {
		log.info("remove..." + p_no);
		if (service.remove(p_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/product-list";
	}
	
	@GetMapping("/member")
	public String memberList() {
		return "./admin/adminMemberList";
	}
	
	@GetMapping("/memberget")
	public String memberGet() {
		return "./admin/adminMemberDetail";
	}
	
}
