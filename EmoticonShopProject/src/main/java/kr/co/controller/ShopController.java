package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	private ProductService service; // product service
	
	// ���θ� ����
	@GetMapping({"","/index"})
	public String index(Model model) {
		log.info("Shop main");
		model.addAttribute("plist", service.getList());
		return "./shop/index";
	}
	
	// �ű� �̸�Ƽ�� ������ �̵�
	@GetMapping("/newpage")
	public String newPage(Model model) {
		log.info("Shop newPage");
		model.addAttribute("list", service.getList());
		return "./shop/newPage";
	}
	
	// �α� �̸�Ƽ�� ������ �̵�
	@GetMapping("/poppage") 
	public String popPage() {
		return "./shop/popPage";
	}
	
	// �̸�Ƽ�� �������� �̵�
	@GetMapping("/detailpage")
	public String detailPage() {
		return "./shop/detailPage";
	}
	
	@GetMapping("/mypage") 
	public String myPage() {
		return "./shop/profile-details";
	}
	
	@GetMapping("/order")
	public String order() {
		return "./shop/order";
	}
	
	@GetMapping("/member-update") 
	public String memberUpdate() {
		return "./shop/member-update";
	}
	
	@GetMapping("/member-delete")
	public String memberDelete() {
		return "./shop/member-delete";
	}
}
