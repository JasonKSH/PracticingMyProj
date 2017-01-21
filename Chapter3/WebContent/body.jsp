<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.*"%>

<html>
<head>

<meta charset="UTF-8">
<title>현재 시각</title>
</head>
<body>
<%
   Calendar c = Calendar.getInstance();
   int hour = c.get(Calendar.HOUR_OF_DAY);
   int minute = c.get(Calendar.MINUTE);
   int second = c.get(Calendar.SECOND);
%>

The time on the server is <%= new java.util.Date() %> <br>
Uppercase : <%= new String("Hello World").toUpperCase() %><br>
20 x 5 = <%= 20 * 5 %> 이다.<br>
88 이 79 보다 작다 ? <%= 88< 79 %> 이다. <br>
88 이 79 보다 크다 ? <%= 88> 79 %> 이다. <br>
SimpleDateFormat 사용 <br>
현재 시간은 <%=new SimpleDateFormat().format(new Date()) %> 입니다.<br>
현재 시간은 <%=hour %> 시 <%=minute %>분 <%=second %> 초 입니다.<br>
<%
	if(hour>=12){ %>
		<h2> 오후입니다 </h2>
	<% } else { %>
		<h2> 오전입니다 </h2>
<% } %>


<%
	for(int i=1; i<=5; i++){
		out.println("<br/>I Love JSP:" + i);
		
	}
%><br>
<%!
	String makeItLower(String data){
	return data.toLowerCase();
	}
%>
Lower case "Hello World" : <%=makeItLower("Hello World") %>
<br>
<%!
	public int sum(){
		int total=0;
		for(int i=1; i<=100;i++){
			total+=i;
		}
		return total;
	}
	String str="1부터 100까지의 합";	
%>
<%=str %> 은 <b> <%=sum() %></b>입니다.<br>
<%=str %> 에 3을 곱하면 <b> <%=sum() * 3 %></b>입니다.<br>
<%=str %> 을 1000으로 나누면 <b> <%=sum()/1000. %></b>입니다.<br>

<% for(int j=2;j<=9;j++){
	for(int k=1;k<=9;k++){%>
		 <%=j %> * <%=k %> = <%=j*k %> /
	<%}%> <br><%

}%>


<%@ include file="footer.jsp"%>
</body>
</html>