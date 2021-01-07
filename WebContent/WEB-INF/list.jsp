<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.PersonVo" %>


<!-- PhoneController 포워드 시켰다  personList -->
<%
	List<PersonVo> personList = (List<PersonVo>)request.getAttribute("pList");
	
%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>전화번호 리스트</h1>

	<p>
		입력한 전화번호 내역입니다.
	</p>

	<%for(int i=0; i<personList.size(); i++) {%>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%=personList.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=personList.get(i).getCompany() %></td>
			</tr>
		</table>
		<br>
	<%} %>
	
	<a href="">추가번호 등록</a>

</body>
</html>