package com.kr.lotto;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.CommonService;
import lotto.LottoPageVO;
import member.MemberService;

@Controller
public class StatsController {
	@Autowired
	private SqlSession sql;
	@Autowired private MemberService member;
	@Autowired private CommonService common;
		private static final String JDBC_URL = "jdbc:mysql://211.47.75.102/dbelem";
	    private static final String DB_USER = "elem";
	    private static final String DB_PASSWORD = "testtest1234";
		// 조회하고 출력하는 예제
		@RequestMapping(value = "/stats.st", produces = "text/html;charset=utf-8")
		public String lotto_list(HttpSession session, Model model, LottoPageVO page) {
			try {
	            // 데이터베이스 연결
				Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
	            Statement stmt = conn.createStatement();

	            // 현재 회차 가져오기
	            int latestDrwNo = getLatestDrwNo();
	            int nextDrwNo = latestDrwNo + 1;
	            
	            // 로또 번호 가져오기
	            URL url = new URL("https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=" + nextDrwNo);
	            HttpURLConnection con = (HttpURLConnection) url.openConnection();
	            con.setRequestMethod("GET");
	            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            String inputLine;
	            StringBuffer content = new StringBuffer();
	            while ((inputLine = in.readLine()) != null) {
	                content.append(inputLine);
	            }
	            in.close();
	            con.disconnect();

	            // JSON 파싱
	            JSONObject json = new JSONObject(content.toString());
	            int[] winningNumbers = {
		                json.getInt("drwtNo1"),
		                json.getInt("drwtNo2"),
		                json.getInt("drwtNo3"),
		                json.getInt("drwtNo4"),
		                json.getInt("drwtNo5"),
		                json.getInt("drwtNo6")
		        };
	            // 데이터베이스에 삽입
	            String sql = "INSERT INTO lotto (drwNo, drwtNo1, drwtNo2, drwtNo3, drwtNo4, drwtNo5, drwtNo6, bnusNo, drawDate, firstWinamnt, firstwinner) " +
	                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, nextDrwNo);
	            for (int i = 0; i < 6; i++) {
	                pstmt.setInt(i + 2, winningNumbers[i]); // 2부터 시작하는 이유는 첫 번째 인자에는 drwNo가 들어갑니다.
	            }
	            pstmt.setInt(8, json.getInt("bnusNo"));
	            pstmt.setString(9, json.getString("drwNoDate") );
	            DecimalFormat df = new DecimalFormat("#,##0원");
	            pstmt.setString(10 ,df.format(json.getLong("firstWinamnt")) );
	            
	            pstmt.setInt(11, json.getInt("firstPrzwnerCo") );
	            pstmt.executeUpdate();

	            // 종료
	            pstmt.close();
	            stmt.close();
	            conn.close();
	        } catch (Exception e) {
	        }
			
			
			session.setAttribute("category", "st");
			model.addAttribute("page", lotto_list(page));
			return "stats/stats";
		}
		
		private static int getLatestDrwNo() throws Exception {
	        // 데이터베이스 연결
	        Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
	        Statement stmt = conn.createStatement();

	        // 최신 회차 가져오기
	        String sql = "SELECT MAX(drwNo) FROM lotto";
	        ResultSet rs = stmt.executeQuery(sql);
	        rs.next();
	        int latestDrwNo = rs.getInt(1);

	        // 종료
	        rs.close();
	        stmt.close();
	        conn.close();

	        return latestDrwNo;
	    }

		// 페이지 처리
		public LottoPageVO lotto_list(LottoPageVO page) {
			page.setTotalList(sql.selectOne("lotto.total", page));
			page.setList(sql.selectList("lotto.plist", page));
			return page;
		}
		
}