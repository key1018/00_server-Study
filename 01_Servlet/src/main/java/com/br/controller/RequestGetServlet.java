package com.br.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 요청을 받아주는 Controller

/**
 * Servlet implementation class RequestGetServlet
 */
@WebServlet("/test1.do")
public class RequestGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestGetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get방식으로 실행했기 때문에 doGet메소드가 저절로 호출됨
		System.out.println("doGet메소드 실행");
		
		/*
		 * 첫 번째 매개변수인 request에는 요청시 전달된 내용들이 담겨있음 (사용자가 입력한값, 요청전송방식, 요청자의 ip주소 등등)
		 * 두 번째 매개변수인 response에는 요청처리 후 응답할 때 사용되는 객체가 담겨있음
		 * 
		 * 요청처리를 위해서 요청시 전달된 값들 뽑기 (request안에 담겨있음)
		 * request의 parameter 영역 안에 존재(키-밸류 세트로 담겨있음)
		 * 
		 * 따라서 request의 parameter영역으로부터 전달된 데이터 뽑는 메소드
		 * > request.getParameter("키") : String (그에 해당하는 value값) => 숫자타입도 무조건 String타입으로 반환
		 * > request.getParameterValues("키") : String[] (그에 해당하는 value값들이 배열에 담겨서 반환) => 밸류값이 2개 이상인 경우
		 */
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String city = request.getParameter("city");
		double height = Double.parseDouble(request.getParameter("height"));
		String[] foods = request.getParameterValues("food");
		
		System.out.println("name : " + name);
		System.out.println("age : " + age);
		System.out.println("height : " + height);
		System.out.println("city : " + city);
		System.out.println("gender : " + gender);
		
		if(foods == null) {
			System.out.println("foods : 없음");
		} else {
				System.out.println("foods : " + String.join(", ", foods));
		}	
		
		// 모두 java문장으로 console 창 안에서만 생성됨 
		// => 뽑아낸 값들을 응답페이지(html)을 만들어서 전송하기!!! 
		
		
		// 위의 요청처리 후 성공했다는 가정하에 사용자가 보게될 응답페이지(html)만들어서 전송하기
		// 즉, Java코드 내에 사용자가 보게될 응답 html 구문 작성할꺼임!!
		
		// 장점 : Java코드 내에 작성하기 때문에 반복문이나 조건문, 유용한 메소드 같은걸 활용할 수 있음
		// 단점 : 굉장히 복잡, 불편, 혹시라도 후에 html을 수정한다면 Java코드를 수정하는셈(서버를 재실행 해야됨)
		
		// * response 객체를 이용해서 사용자에게 html 전달
		// 1) 앞으로 출력할 문서형태의 선언 구문
		response.setContentType("text/html; charset=UTF-8");
		// 2) 응답하고자 하는 사용자 (요청했던 사용자)와의 스트림(클라이언트와의 통로) 생성
		PrintWriter out = response.getWriter();
		// 3) 스트림을 통해 응답 html 구문을 한줄씩 출력
		out.println("<html>");
		out.println("<style>");
		
			out.println("h2{color:red}");
			out.println("#name{color:orange}");
			out.println("#age{color:yellow}");
			out.println("#city{color:blue}");
			out.println("#height{color:green}");
			out.println("#gender{color:purple}");
			
		out.println("</style>");
		out.println("<head>");
		out.println("<body>");
		
		out.println("<h2>개인정보 응답화면</h2>");
		
		out.printf("<span id='name'>%s</span>님은 ", name);
		out.printf("<span id='age'>%s</span>살이며 ", age);
		out.printf("<span id='city'>%s</span>에 사는 ", city);
		out.printf("<span id='height'>%.1f</span>cm이고 ", height);
		
		out.print("성별은 ");
		if(gender == null) {
			out.println("선택을 안했습니다. <br>");
		} else {
			out.printf("<span id='gender'>%s</span>입니다. <br>", (gender.equals("M") ? "남자" : "여자"));
		}
		
		out.print("좋아하는 음식은 ");
		if(foods == null) {
			out.println("없습니다.");
		} else {
			// ["한식", "양식", "분식", ..]
			out.println("<ul>");
			
			for(int i = 0; i < foods.length; i++) {
				out.println("<li>" + foods[i] + "</li>");
			}
			
			out.println("</ul>");
		}
		
		out.println("</body>");
		out.println("</html>");
		
		out.flush(); // 출력안되는 것들을 내보내기위한 구문
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
