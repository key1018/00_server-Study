package com.br.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPostServlet
 */
@WebServlet("/test2.do")
// 2. 전달값 받아서 응답페이지에 전송
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 이후 실행");
		
		// post방식 요청 같은 경우
		// 전달값을 뽑기 "전"에 인코딩 설정해야됨 => 아니면 한글값은 깨져서 보임
		request.setCharacterEncoding("UTF-8");
		
		// 요청시 전달값 (getParameter에 담김)
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String city = request.getParameter("city");
		double height = Double.parseDouble(request.getParameter("height"));
		String[] foods = request.getParameterValues("food");
		
		System.out.println(name + " " + gender + " " + age + " " + city + " " + height);
		
		// 요청처리 다 됐다는 가정ㅊ하에 사용자가 보게될 응답화면
		// 순수 Servlet 방식 : Java코드내에 html을 기술
		// JSP(Java Servlet Page) 방식 : html내에 Java코드를 쓸 수 있음
		// => <%%>, <%= %> 태그를 사용하여 java코드 사용 가능(스트립틀릿)
		
		// 응답페이지 만드는 과정을 JSP에게 위임 (떠넘기기)
		
		// 단, 현재 Servlet상에 존재하는 데이터가 응답화면(jsp)에서 필요한 경우
		// 그 데이터를 담아서 jsp로 전달해줘야됨
		// request의 attribute영역에 담기 (주로 응답할 때 사용 => 키-밸류 세트로 담아야됨)
		// request.setAttribute("키", 밸류);
		request.setAttribute("name", name); // value값에는 사용자가 입력한 값이 들어있음(request.getParameter을 통해 전달받은 변수 지정 가능)
		request.setAttribute("age", age); // key의 명칭은 임의로 지정 가능
		request.setAttribute("city", city);
		request.setAttribute("height", height);
		request.setAttribute("gender", gender);
		request.setAttribute("foods", foods); // 배열(value를 받는 값이 Objects이므로 배열도 가능)
		
		// jsp로 응답페이지를 볼 수 있도록 설정
		RequestDispatcher view = request.getRequestDispatcher("views/responsePage.jsp");
		// RequestDispatcher 란?  
		// - 다른 서블릿에게 프로그램의 흐름을 넘기는 표현 
		// - disp.forward : forward된 서블릿과 request, response를 공유한다.
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post방식으로 요청시 doPost메소드가 제일 먼저 실행 
		// 이후 doGet메소드를 호출함 => 이클립스가 개발자의 편의를 위해 설정함
		System.out.println("doPost 먼저 실행");
		doGet(request, response);
	}

}
