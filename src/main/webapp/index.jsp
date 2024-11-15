<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8">
<title>Order Drinks</title>

<!-- 引入 Google Fonts 的思源黑體字體 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@100..900&display=swap" rel="stylesheet">


<!-- 設置頁面字體 -->
    <style>
        body {
             font-family: "Noto Sans TC", sans-serif;
             margin: 0;  
   			 padding: 0;
        }
        table {
        width: 85%;
        border-collapse: collapse;
	    }
	    table, th, td {
	        border: 1px solid black;
	    }
	    th, td {
        padding: 10px;
        text-align: center; /* 使表格內容居中 */
        vertical-align: middle;
    	}
    	
    	table {
	     margin: 0;  /* 移除表格外邊距 */
   		 padding: 0;  /* 移除表格內邊距 */
	    }
    </style>


</head>
<body>

	
	<h1>今天喝這團！</h1>
	
	<hr>
	<h5>※ 注意菜單圖片是否正確</h5>
	<hr>
	<h5>※ 不能調整的請選「正常」</h5>
	
	<form action="/OrderDrinks/OrderDrinksServlet" method="post">
		<input type = "text" id = "name" name = "name" placeholder="請輸入姓名" 
			   required="required">
		
		<input type = "text"  id = "item" name = "item" placeholder="請輸入品名" 
			   required="required">
		
		<select id ="sugar" name = "sugar" required>
				<option>請輸入甜度</option>
				<option>無糖</option>
				<option>微糖 / 3分甜</option>
				<option>半糖 / 5分甜</option>
				<option>少糖 / 8分甜</option>
				<option>正常甜</option>
		</select>
		
		<select id ="ice" name = "ice" required>
				<option>請輸入冰量</option>
				<option>熱飲</option>
				<option>去冰</option>
				<option>微冰 / 3分冰</option>
				<option>半冰 / 5分冰</option>
				<option>少冰 / 8分冰</option>
				<option>正常冰</option>
		</select>
			
			<input type = "text" id ="plus" name = "plus"
			placeholder="要加什麼料？" >
			
			<input type = "number"  id ="price" name = "price"
			placeholder="總金額" required="required">
			<hr>
			<input type = "submit" value="OK"> <!-- 也可以用button，還可以放圖片 -->
	</form>	
	

	<h3>大家的訂單</h3>	
	<table>
		    <thead>
		        <tr>
		            <th>姓名</th>
		            <th>品項</th>
		            <th>甜度</th>
		            <th>冰量</th>
		            <th>加料</th>
		            <th>價格</th>
		        </tr>
		    </thead>  
		    <tbody>  
		    <!-- 用 JSTL 帶出 orders 列表，顯示每一個訂單 -->
			<c:forEach var = "order" items = "${sessionScope.orders}">
					${order}
			</c:forEach>
			 </tbody>
	</table>
	
</body>
</html>