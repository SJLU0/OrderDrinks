package com.example.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/OrderDrinksServlet")
public class OrderDrinksServlet extends HttpServlet {
	
@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");  // 設定請求字符編碼
	response.setContentType("text/html; charset=UTF-8"); // 設定回應內容類型和字符編碼
	
	//取得前端表單
		String name = request.getParameter("name");
		String item = request.getParameter("item");
		String sugar = request.getParameter("sugar");
		String ice = request.getParameter("ice");
		String plus = request.getParameter("plus");
		String price = request.getParameter("price");
		
	//組合訂單資訊為一個字串
		String orderRow = "<tr>"
			                + "<td>" + name + "</td>"
			                + "<td>" + item + "</td>"
			                + "<td>" + sugar + "</td>"
			                + "<td>" + ice + "</td>"
			                + "<td>" + plus + "</td>"
			                + "<td>" + price + "</td>"
			                + "</tr>";
		
	// 這一行是每次處理請求時，檢索當前使用者的 session
		HttpSession session = request.getSession(); 

	// 如果是第一次訪問，會創建新的 session；如果已經有 session，則會返回已經存在的 session。
		
		
	// 從 Session 取得現有的訂單列表，如果沒有則初始化一個新的 ArrayList
		List<String> orders =(List<String>) session.getAttribute("orders");
	
	// 如果 session 中沒有 "orders" 屬性（即第一次訂購），則創建一個新的 List
        if (orders == null) {
            orders = new ArrayList<>();
            session.setAttribute("orders", orders);  
            // 將新創建的訂單列表儲存到 session 中
        }	
        
     // 將新的訂單加到訂單列表中
        
        orders.add(orderRow);

     // 更新 Session 中的訂單列表
        
        session.setAttribute("orders", orders);

     // 重新導向回訂單頁面，顯示更新後的訂單列表
        
        response.sendRedirect("index.jsp");  // 這裡 "index.jsp" 是你顯示訂單的頁面    
        
		
	}

}
