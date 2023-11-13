package kr.co.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.domain.MemberDTO;
import kr.co.domain.ProductDTO;
import kr.co.domain.UploadDTO;
import kr.co.service.MemberService;
import kr.co.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/admin/*")
public class AdminController {
	private ProductService service; // product service;
	@Inject
	private MemberService mservice; // member service 
	//private static final String IMAGE_REPO = "D:\\lyk\\workspacespring\\EmoticonShopProject\\src\\main\\webapp\\resources\\preview";
	//private static final String IMAGES_REPO = "D:\\lyk\\workspacespring\\EmoticonShopProject\\src\\main\\webapp\\resources\\emoticons";
	private static final String IMAGE_REPO = "C:\\Users\\ykl06\\git\\EmoticonShop\\EmoticonShopProject\\src\\main\\webapp\\resources\\preview";
	private static final String IMAGES_REPO = "C:\\Users\\ykl06\\git\\EmoticonShop\\EmoticonShopProject\\src\\main\\webapp\\resources\\emoticons";

	
	@GetMapping("")
	public String adminMain(Model model) throws Exception {
		log.info("Admin page");
		model.addAttribute("plist", service.getList());
		model.addAttribute("mlist", mservice.getList());
		return "./admin/admin";
	}
	
	@GetMapping("/product-list")
	public void testList(Model model) {
		log.info("product list");
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/product-register")
	public String register() {
		return "./admin/product-register";
	}
	
	@PostMapping("/register")
	public String register(ProductDTO product, RedirectAttributes rttr,
		@RequestParam("file") MultipartFile file, MultipartHttpServletRequest files) {	
		String p_image = upload(file);
		List<UploadDTO> imageList = uploads(files, product.getP_name());
		
		if (p_image == null || imageList.isEmpty()) { 
			log.info("product image null...");
			return "redirect:/admin/product-list";	
		} else { 
			product.setImageList(imageList);
			product.setP_image(p_image);
			log.info("register: " + product);	
			service.register(product);
			rttr.addFlashAttribute("result", product.getP_no());
			return "redirect:/admin/product-list";	
		}
	} 
	
	private String upload(MultipartFile file) {
		String fileRealName = file.getOriginalFilename(); 
		long size = file.getSize(); 
		
		System.out.println("��ǥ ���ϸ�: " + fileRealName);
		System.out.println("��ǥ ���ϻ�����: " + size);
		
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
			
		String uniqueName = uuids[0];
		System.out.println("������ ���� ���ڿ�: " + uniqueName);
		System.out.println("Ȯ���ڸ�: " + fileExtension);
		String p_image = uniqueName + fileExtension;
		

		File saveFile = new File(IMAGE_REPO + "\\" + uniqueName + fileExtension);
		try { 
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return p_image;
	}


	public List<UploadDTO> uploads(MultipartHttpServletRequest files, String p_name) {
		List<MultipartFile> image_list = files.getFiles("files");
		ArrayList<String> images = new ArrayList<String>();
		List<UploadDTO> uploadDTOList = new ArrayList<UploadDTO>();
		
		if (image_list == null) {
			return null;
		} else {
			for (int i = 0; i < image_list.size(); i++) {
				UploadDTO uploadDTO = new UploadDTO();
				String fileRealName = image_list.get(i).getOriginalFilename();
				long size = image_list.get(i).getSize();
				images.add(fileRealName);
				
				System.out.println("���ϸ�: " + fileRealName);
				System.out.println("���ϻ�����: " + size);
				
				Path directory = Paths.get(IMAGES_REPO, p_name);
				
				uploadDTO.setI_name(fileRealName);
				uploadDTO.setI_uploadpath(IMAGES_REPO);
				uploadDTOList.add(uploadDTO);
				
				if (Files.exists(directory)) { 
					File saveFiles = new File(directory + "//" + fileRealName);
					try {
						image_list.get(i).transferTo(saveFiles);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}			
				} else { 
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
			
			System.out.println("uploadDTOList: " + uploadDTOList);
			
			return uploadDTOList;
		}	
	} 
	
	@GetMapping({"/product-get", "/product-modify", "/product-remove"})
	public void get(@RequestParam("p_no") Long p_no, Model model) {
		log.info("/get or modify or remove");
		model.addAttribute("product", service.get(p_no));
	}
	
	
	@PostMapping("/modify")
	public String modify(ProductDTO product, RedirectAttributes rttr,
			@RequestParam("file") MultipartFile file, MultipartHttpServletRequest files,
			@RequestParam("before_image") String b_img, @RequestParam("before_name") String b_name) {
		List<MultipartFile> uploadFileList = files.getFiles("uploadfiles");
		

		if (file.isEmpty()) {
			product.setImageList(product.getImageList());
			product.setP_image(product.getP_image());
			product.setP_name(product.getP_name());
			if (service.modify(product)) {
					log.info("modify: " + product);
					rttr.addFlashAttribute("result", "success");
					return "redirect:/admin/product-list";	
				} else {
					log.info("product modify fail...");
					return "redirect:/admin/product-list";	
				}
		} 
      
		String p_image = upload(file); 
		String before_image = b_img; 
		
		if (!deleteFile(before_image, b_name)) { 
			log.info("file delete fail...");
			return "redirect:/admin/product-list";
		} else { 
			List<UploadDTO> imageList = uploads(files, product.getP_name());
			product.setP_image(p_image);
			product.setImageList(imageList);
			if (service.modify(product)) {
				log.info("modify: " + product);
				rttr.addFlashAttribute("result", "success");
				return "redirect:/admin/product-list";	
			} else {
				log.info("product modify fail...");
				return "redirect:/admin/product-list";	
			}
		}
	}
	
	@PostMapping("/remove")
	public String remove(ProductDTO product, 
			@RequestParam("before_image") String b_img, @RequestParam("p_name") String p_name,
			@RequestParam("m_pw") String m_pw, RedirectAttributes rttr, HttpSession session) {
		String before_image = b_img; 
		
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		String sessionPass = member.getM_pw();
		
		if(!(sessionPass.equals(m_pw))) {
			log.info("��ǰ ���� ����: ������ ��й�ȣ ����ġ");
			rttr.addFlashAttribute("msg", false);
			rttr.addAttribute("p_no", product.getP_no());
			return "redirect:/admin/product-remove";
		} else {
			if (service.remove(product.getP_no())) {
				if (!deleteFile(before_image, p_name)) {
					log.info("file delete fail...");
					return "redirect:/admin/product-list";
				} else {
					log.info("remove..." + product.getP_no());				
					rttr.addFlashAttribute("result", "success");
					return "redirect:/admin/product-list";		
				}		
			} else {
				log.info("remove fail...");
				return "redirect:/admin/product-list";		
			}
		}
		
	}
	
	public boolean deleteFile(String fileName, String productName) {
		log.info("delete image file :" + fileName);
		File file = null;
		File directory = null;
		try {
			file = new File(IMAGE_REPO + "\\" + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();
			
			directory = new File(IMAGES_REPO + "\\" + URLDecoder.decode(productName, "UTF-8"));
			File[] directoryList = directory.listFiles();
			for (int j = 0; j < directoryList.length; j++) {
				System.out.println(directoryList[j].delete());
			}
			if (directory.isDirectory()) {
				directory.delete();
			}
			return true;
		} catch(Exception e)	 {
			e.printStackTrace();
			return false;
		}
	}
	
	@GetMapping("/member-list")
	public void memberList(Model model) throws Exception {
		log.info("member list");
		model.addAttribute("mlist", mservice.getList());
	}
	
	@GetMapping("/member-get")
	public void memberGet(@RequestParam("m_no") Long m_no, Model model) {
		log.info("/member-get");
		model.addAttribute("member", mservice.get(m_no));
	}
	
}
