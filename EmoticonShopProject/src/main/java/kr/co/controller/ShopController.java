package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.domain.ProductDTO;
import kr.co.mapper.FileMapper;
import kr.co.service.FileService;
import kr.co.service.MemberService;
import kr.co.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/shop/*")
public class ShopController {
	private ProductService pservice; // product service
	private FileService fservice; // File service(�̸�Ƽ�ܻ�����)
	private MemberService mservice;
	
	// ���θ� ����
	@GetMapping({"","/index"})
	public String index(Model model) {
		log.info("Shop main");
		model.addAttribute("plist", pservice.getList());
		model.addAttribute("deslist", pservice.descList());
		return "./shop/index";
	}
	
	// �ű� �̸�Ƽ�� ������ �̵�
	@GetMapping("/newpage")
	public String newPage(Model model) {
		log.info("Shop newPage");
		model.addAttribute("list", pservice.getList());
		model.addAttribute("flist", fservice.getImageList1());
		
		return "./shop/newPage";
	}
	
	// �α� �̸�Ƽ�� ������ �̵�
	@GetMapping("/poppage") 
	public String popPage(Model model) {
		log.info("Shop popPage");
		model.addAttribute("deslist", pservice.descList());
		return "./shop/popPage";
	}
	
	// �̸�Ƽ�� �������� �̵�
	@GetMapping("/detailpage")
	public String detailPage(@RequestParam("p_no") Long p_no, Model model) {
		log.info("shop getlist");
		ProductDTO product = pservice.get(p_no);
	    int cnt = product.getP_readcount() + 1;
	    product.setP_readcount(cnt);
	    if (pservice.modify(product)) {
	    	log.info("Product read count add success");
			model.addAttribute("product", pservice.get(p_no));
			model.addAttribute("flist", fservice.getImageList(p_no));
	    	return "./shop/detailPage";	
	    } else {
	    	log.info("Product read count add fail");
	    	return "./shop/";	
	    } 
	}
	
}
