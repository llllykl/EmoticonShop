package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.domain.MemberDTO;
import kr.co.service.MemberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
private MemberService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}
	
	@PostMapping("/register")
	public String register(MemberDTO member, RedirectAttributes rttr) {
		
		log.info("register : " + member);
		
		service.register(member);
		
		rttr.addFlashAttribute("result", member.getM_id());
		
		return "redirect:/member/list";
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("m_no")Long m_no,Model model) {
		log.info("/get or modify");
		model.addAttribute("member", service.get(m_no));
	}
	
	@PostMapping("/modify") 
	public String modify(MemberDTO member, RedirectAttributes rttr) {
		log.info("modify : "+member);
		
		if(service.modify(member)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/member/list";
	}
	

	@PostMapping("/login")
	public String Login(MemberDTO member, HttpServletRequest request) {
		MemberDTO Login = service.login(member);
		HttpSession session = request.getSession();
		if(Login!=null) {
			session.setAttribute("Login", Login);
			return "redirect:/member/index";
		}
		else {
			session.setAttribute("Login", null);
			return "redirect:/member/login";
		}
	}
	
	@PostMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login";
	}
}
