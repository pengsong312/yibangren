<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约列表</title>
<style type="text/css">
table,td {
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
	<form action="/yibangren/order/add">
		<table>
			<tr>
				<td>姓名:</td>
				<td><input type="text" name="orderName" /></td>
			</tr>

			<tr>
				<td>电话:</td>
				<td><input type="text" name="telNum" /></td>
			</tr>

			<tr>
				<td>地址:</td>
				<td><input type="text" name="province" /></td>
			</tr>
			
			<tr>
				<td>备注:</td>
				<td><input type="text" name="note" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="submit" /> <input type="reset"
					value="reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>