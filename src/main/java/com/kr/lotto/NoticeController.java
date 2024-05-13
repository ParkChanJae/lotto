package com.kr.lotto;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NoticeController {
		
		//공지사항리스트 화면
		@RequestMapping("/list.no")
		public String Com() {
			// 응답화면연결
			return "notice/list";
		}
}
