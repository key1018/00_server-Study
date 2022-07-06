package com.br.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConfirmController
 */
@WebServlet("/confirm.do")
public class ConfirmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1) 전달값 중에 한글이 있는 경우 인코딩 처리 (post방식의 경우)
		// request.setCharacterEncoding("UTF-8");
		
		// 2) 요청시 전달값 (parameter) 뽑기 및 데이터 가공 처리 (파싱같은거) => 변수 및 객체에 기록
		// request.getParameter("키");
		// request.getParameterValues("키");
		// 공통점 : 만일 키값이 존재하지 않을 경우 null값 반환 => 오류 발생
		String userName = request.getParameter("userName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String message = request.getParameter("message");
		
		String pizza = request.getParameter("pizza");
		String[] toppings = request.getParameterValues("topping");
		String[] sides = request.getParameterValues("side");
		String payment = request.getParameter("payment");
		
		// 3) 요청처리(db와 상호작용 : Service > Dao > sql문 실행)
		System.out.println(userName + " " + phone + " " + address + " " + message);
		System.out.println(pizza);
//		System.out.println(String.join(", ", toppings));
//		System.out.println(String.join(", ", sides));
		System.out.println(payment);
		
		// 4) 피자 가격 측정하기
		int price = 0;
		// 피자 가격
		switch(pizza) {
		case "콤비네이션피자" : price += 10000; break;
		case "치즈피자" : price += 11000; break;
		case "포테이토피자" : case "고구마피자" : price += 12000; break;
		case "불고기피자" : price += 13000; break;
		}
		
		// 토핑 가격
		if(toppings != null) {
			for(int i = 0; i < toppings.length; i++) {
				switch(toppings[i]) {
				case "고구마무스" : case "콘크림무스" : price += 1500; break;
				case "파인애플토핑" : case "치즈토핑" : price += 1800; break;
				case "치즈바이트" : case "치즈크러스트" : price += 2000; break;
				}
			}
		}
		
		// 사이드 가격
		if(sides != null) {
			for(int i = 0; i < sides.length; i++) {
				switch(sides[i]) {
				case "콜라" : case "사이다" : price += 1000; break;
				case "갈릭소스" : case "핫소스" : case "피클" : 
				case "파마산치즈가루" : price += 500; break;
				}
			}
		}
		
		// 5) 반환받은 결과를 가지고 성공/실패 판별 후 사용자가 보게될 응답페이지 만들기
		// 응답페이지만들기 (servlet에서 만들기 vs jsp에 위임하기)
		// RequestDispatcher : 위임과 관련된 객체(어떤 jsp를 응답페이지로 띄울것인지)
		RequestDispatcher view = request.getRequestDispatcher("views/pizzaPayment.jsp");
		
		// 응답데이터(Attribute) == 응답페이지에 필요한 데이터들(전달되는 request들)
		// request.setAttribute("키", 전달받은request);
		request.setAttribute("userName", userName);
		request.setAttribute("phone", phone);
		request.setAttribute("address", address);
		request.setAttribute("message", message);
		request.setAttribute("pizza", pizza);
		request.setAttribute("toppings", toppings);
		request.setAttribute("sides", sides);
		request.setAttribute("price", price); // 전달받은 피자총액
		request.setAttribute("payment", payment);
		
		// request와 response를 포워딩방식으로 전달하기
		view.forward(request, response); // 현재 지정된 jsp를 사용자에게 띄우는 구문(포워딩방식)
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
