package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.mapper.FileMapper;
import kr.co.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/shop/*")
public class ShopController {
	private ProductService pservice; // product service
	private FileMapper fservice; // File service(이모티콘상세파일)
	
	// 쇼핑몰 메인
	@GetMapping({"","/index"})
	public String index(Model model) {
		log.info("Shop main");
		model.addAttribute("plist", pservice.getList());
		return "./shop/index";
	}
	
	// 신규 이모티콘 페이지 이동
	@GetMapping("/newpage")
	public String newPage(Model model) {
		
		log.info("Shop newPage");
		
		model.addAttribute("list", pservice.getList());
		model.addAttribute("flist", fservice.getImageList1());
		
		return "./shop/newPage";
	}
	
	// 인기 이모티콘 페이지 이동
	@GetMapping("/poppage") 
	public String popPage() {
		return "./shop/popPage";
	}
	
	// 이모티콘 상세페이지 이동
	@GetMapping("/detailpage")
	public String detailPage(@RequestParam("p_no") Long p_no, Model model) {
		log.info("shop getlist");
		model.addAttribute("product", pservice.get(p_no));
		model.addAttribute("flist", fservice.getImageList(p_no));
		return "./shop/detailPage";
	}
	
}
