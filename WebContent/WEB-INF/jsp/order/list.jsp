<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, td {
	font: 100% Arial, Helvetica, sans-serif;
	font-size: 14px;
}

.dd table {
	border-collapse: collapse;
	border: none;
}

.dd td {
	border: solid gray 1px;
	height: 25px;
	text-align: center;
}
</style>


</head>
<body>
	<h5>
		<a href="/yibangren/order/toAdd">美女预约上门</a>
	</h5>
	<h5>已预约人数：${size }</h5>
	<table>
		<tr>
			<td>姓名</td>
			<td>电话</td>
			<td>地址</td>
			<td>备注</td>

		</tr>
		<c:forEach items="${ordersList }" var="ordersList">
			<tr>
				<td>${ordersList.orderName }</td>
				<td>${ordersList.telNum }</td>
				<td>${ordersList.province }</td>
				<td>${ordersList.note}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>