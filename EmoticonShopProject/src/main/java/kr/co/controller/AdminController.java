package kr.co.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.domain.MemberDTO;
import kr.co.domain.ProductDTO;
import kr.co.service.MemberService;
import kr.co.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/admin/*")
public class AdminController {
	private ProductService service; // product service
	private MemberService mservice; // member service 
	// 이미지 저장 경로
	//private static final String IMAGE_REPO = "D:\\lyk\\workspacespring\\EmoticonShopProject\\src\\main\\webapp\\resources\\preview";
	private static final String IMAGE_REPO = "C:\\Users\\ykl06\\git\\EmoticonShop\\EmoticonShopProject\\src\\main\\webapp\\resources\\preview";
	private static final String IMAGES_REPO = "C:\\Users\\ykl06\\git\\EmoticonShop\\EmoticonShopProject\\src\\main\\webapp\\resources\\emoticons";
	
	// 관리자 메인(product, member)
	@GetMapping("")
	public String adminMain(Model model) {
		log.info("Admin page");
		model.addAttribute("plist", service.getList());
		model.addAttribute("mlist", mservice.getList());
		return "./admin/admin";
	}
	
	// 상품 전체 출력
	@GetMapping("/product-list")
	public void testList(Model model) {
		log.info("product list");
		model.addAttribute("list", service.getList());
	}
	
	// 상품 등록페이지 이동
	@GetMapping("/product-register")
	public String register() {
		return "./admin/product-register";
	}
	
	// 상품 등록 처리
	@PostMapping("/register")
	public String register(ProductDTO product, RedirectAttributes rttr,
		@RequestParam("file") MultipartFile file, MultipartHttpServletRequest files) {	

		String p_image = upload(file);
		boolean p_images = uploads(files, product.getP_name());
		
		if (p_image == null || !p_images) { // 이미지 업로드 실패
			log.info("product image null...");
			return "redirect:/admin/product-list";	
		} else { // 이미지 업로드 성공
			product.setP_image(p_image);
			log.info("register: " + product);	
			service.register(product);
			rttr.addFlashAttribute("result", product.getP_no());
			return "redirect:/admin/product-list";	
		}
	} 
	
	// 상품 대표 이미지 업로드 메서드
	private String upload(MultipartFile file) {
		String fileRealName = file.getOriginalFilename(); // 파일명 얻어내는 메서드
		long size = file.getSize(); // 파일 사이즈
		
		System.out.println("대표 파일명: " + fileRealName);
		System.out.println("대표 파일사이즈 " + size);
		// 서버에 저장할 파일이름 fileExtension으로 .jsp와 같은 확장자명을 구함
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
			
		String uniqueName = uuids[0];
		System.out.println("생성된 고유 문자열: " + uniqueName);
		System.out.println("확장자명: " + fileExtension);
		String p_image = uniqueName + fileExtension;
		
		// uuid 적용 후
		File saveFile = new File(IMAGE_REPO + "\\" + uniqueName + fileExtension);
		try { 
			file.transferTo(saveFile); // 실제 파일 저장 메서드
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return p_image;
	}
		
	// 상품 이미지 파일들 업로드 메서드
	public boolean uploads(MultipartHttpServletRequest files, String p_name) {
		List<MultipartFile> image_list = files.getFiles("files");
		
		if (image_list == null) {
			return false;
		} else {
			for (int i = 0; i < image_list.size(); i++) {
				String fileRealName = image_list.get(i).getOriginalFilename();
				long size = image_list.get(i).getSize();
				
				System.out.println("파일명: " + fileRealName);
				System.out.println("파일 사이즈: " + size);
				
				Path directory = Paths.get(IMAGES_REPO, p_name);
				
				if (Files.exists(directory)) { // 이미 경로가 존재하는 경우
					File saveFiles = new File(directory + "//" + fileRealName);
					try {
						image_list.get(i).transferTo(saveFiles);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}			
				} else { // 경로가 존재하지 않는 경우 새로 생성
					try {
						Files.createDirectories(directory);
					} catch (IOException e1) {
						e1.printStackTrace();
					}		
					File saveFiles = new File(directory + "//" + fileRealName);
					try {
						image_list.get(i).transferTo(saveFiles);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}						
				}	
			}		
			return true;
		}	
	} 
	
	// 상품 조회, 수정, 삭제 페이지 이동
	@GetMapping({"/product-get", "/product-modify", "/product-remove"})
	public void get(@RequestParam("p_no") Long p_no, Model model) {
		log.info("/get or modify or remove");
		model.addAttribute("product", service.get(p_no));
	}
	
	
	// 상품 수정 처리
	@PostMapping("/modify")
	public String modify(ProductDTO product, RedirectAttributes rttr,
			@RequestParam("file") MultipartFile file, MultipartHttpServletRequest files,
			@RequestParam("before_image") String b_img) {
		String p_image = upload(file); // 대표 이미지 업로드 
		String before_image = b_img; // 수정 전 이미지
		
		if (p_image == null) {
			log.info("product image null...");
			return "redirect:/admin/product-list";
		} else {
			if (!deleteFile(before_image, product.getP_name())) { // 삭제 실패
				log.info("file delete fail...");
				return "redirect:/admin/product-list";
			} else { // 삭제 성공
				if (!uploads(files, product.getP_name())) { // 수정 이미지 업로드 실패
					log.info("product uploads fail...");
					return "redirect:/admin/product-list";
				} else { // 수정 이미지 업로드 성공
					product.setP_image(p_image);
					log.info("modify: " + product);
					if (service.modify(product)) {
						rttr.addFlashAttribute("result", "success");
					}
					return "redirect:/admin/product-list";							
				}
			}
		}	
	}
	
	// 상품 삭제 처리
	@PostMapping("/remove")
	public String remove(@RequestParam("p_no") Long p_no,
			@RequestParam("before_image") String b_img, @RequestParam("p_name") String p_name,
			RedirectAttributes rttr) {
		String before_image = b_img; // 등록된 이미지명
		
		// 관리자 비밀번호 check
//		if (pw_check.equals(member.getM_pw())) {
//			if (!deleteFile(before_image, p_name)) { // 파일 삭제 실패
//				log.info("file delete fail...");
//				return "redirect:/admin/product-list";
//			} else { // 파일 삭제 성공
//				log.info("remove..." + p_no);
//				if (service.remove(p_no)) {
//					rttr.addFlashAttribute("result", "success");
//				}
//				return "redirect:/admin/product-list";			
//			}
//		} else {
//			log.info("관리자 비밀번호 불일치");
//			return "redirect:/admin/product-list";
//		}
		
		if (!deleteFile(before_image, p_name)) { // 파일 삭제 실패
			log.info("file delete fail...");
			return "redirect:/admin/product-list";
		} else { // 파일 삭제 성공
			log.info("remove..." + p_no);
			if (service.remove(p_no)) {
				rttr.addFlashAttribute("result", "success");
			}
			return "redirect:/admin/product-list";			
		}
		
	}
	
	// 상품 파일 삭제 메서드
	public boolean deleteFile(String fileName, String productName) {
		log.info("delete image file :" + fileName);
		File file = null;
		File directory = null;
		try {
			file = new File(IMAGE_REPO + "\\" + URLDecoder.decode(fileName, "UTF-8"));
			// 대표 이미지 삭제
			file.delete();
			
			directory = new File(IMAGES_REPO + "\\" + URLDecoder.decode(productName, "UTF-8"));
			// 기존 이모티콘 저장한 폴더의 하위 파일 삭제
			File[] directoryList = directory.listFiles();
			for (int j = 0; j < directoryList.length; j++) {
				System.out.println(directoryList[j].delete());
			}
			// 기존 이모티콘 저장한 폴더 삭제
			if (directory.isDirectory()) {
				directory.delete();
			}
		} catch(Exception e)	 {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	// 회원 전체 출력
	@GetMapping("/member-list")
	public void memberList(Model model) {
		log.info("member list");
		model.addAttribute("mlist", mservice.getList());
	}
	
	// 회원 조회 페이지 이동
	@GetMapping("/member-get")
	public void memberGet(@RequestParam("m_no") Long m_no, Model model) {
		log.info("/member-get");
		model.addAttribute("member", mservice.get(m_no));
	}
	
}
