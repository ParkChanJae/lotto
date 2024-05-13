package com.kr.lotto;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CompanyController {
		
		//비밀번호 찾기 화면요청
		@RequestMapping("/company.co")
		public String Com() {
			// 응답화면연결
			return "company/company";
		}
		
		
}
