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
	// ������ ����������
	@RequestMapping("")
	public String adminMain() {
		log.info("Admin page");
		return "./admin/admin";
	}
	
	// ��ǰ ��ü ���
	@GetMapping("/product-list")
	public void testList(Model model) {
		log.info("product list");
		model.addAttribute("list", service.getList());
	}
	
	// ��ǰ ��� ������ �̵�
	@GetMapping("/product-register")
	public String register() {
		return "./admin/product-register";
	}
	
	// ��ǰ ��� ó��
	@PostMapping("/register")
	public String register(ProductDTO product, RedirectAttributes rttr) {
		log.info("register: " + product);
		service.register(product);
		rttr.addFlashAttribute("result", product.getP_no());
		return "redirect:/admin/product-list";
	}
	
	// ��ǰ �� ��ȸ, ��ǰ ����, ��ǰ ���� Ȯ�� ������ �̵�
	@GetMapping({"/product-get", "/product-modify", "/product-remove"})
	public void get(@RequestParam("p_no") Long p_no, Model model) {
		log.info("/get or modify or remove");
		model.addAttribute("product", service.get(p_no));
	}
	
	// ��ǰ ���� ó��
	@PostMapping("/modify")
	public String modify(ProductDTO product, RedirectAttributes rttr) {
		log.info("modify: " + product);
		
		if (service.modify(product)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/product-list";
	}
	
	// ��ǰ ���� ó��
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
