package com.kr.lotto;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.MemberVO;


@Controller
public class ProductController {
		
		//상품 리스트
		@RequestMapping("/list.pr")
		public String ProductList(HttpSession session, Model model) {
			MemberVO vo = (MemberVO) session.getAttribute("loginInfo");
			if(vo ==null) {
				model.addAttribute("msg", "로그인이 필요합니다.");
				model.addAttribute("url", "login.lo");
				return "login/alert";
			}
			// 응답화면연결
			return "product/list";
		}
		
		//상품 결제 1
		@RequestMapping("/pay.pr")
		public String Pay() {
		// 응답화면연결
		return "product/pay";
		}
		
		//상품 결제 1
		@RequestMapping("/pay2.pr")
		public String Pay2() {
		// 응답화면연결
		return "product/pay2";
		}
		
		// 결제완료 페이지
		@RequestMapping("/payend.pr")
		public String Payend(HttpSession session, Model model) {
			MemberVO member = (MemberVO) session.getAttribute("member"); // 세션에서 사용자 정보 가져오기
			model.addAttribute("loginInfo", member);
		// 응답화면연결
		return "product/payend";
		}
}
