<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Drinks</title>
</head>
<body>
	
	
	
	
	
	<h3>今天喝這團！</h3>
	<h5>（不能調整的請選正常/標準）</h5>
	<hr>
	<h1>店家圖片</h1>
	<hr>
	<input type = "text" placeholder="請輸入姓名" required="required"/>
	<hr>
	<input type = "text" placeholder="請輸入品名" required="required"/>
	<hr>
	
	<select>
			<option>請輸入甜度</option>
			<option>無糖</option>
			<option>微糖 / 3分甜</option>
			<option>半糖 / 5分甜</option>
			<option>少糖 / 8分甜</option>
			<option>正常甜</option>
	</select>
	
		<select>
			<option>請輸入冰量</option>
			<option>熱飲</option>
			<option>去冰</option>
			<option>微冰 / 3分冰</option>
			<option>半冰 / 5分冰</option>
			<option>少冰 / 8分冰</option>
			<option>正常冰</option>
	</select>
		<hr>
		<input type = "text" placeholder="要加料嗎？" />
		<hr>
		<input type = "number" placeholder="總金額" required="required"/>
		<hr>
		
		
</body>
</html>