<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><head><title>Reporte de Productos</title></head>
<body>
<%@ page import="java.sql.*" %>
<%
	Connection con;
	Statement sen;
	ResultSet datos;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(
			"jdbc:mysql://localhost/inventario","root","1234");
	sen=con.createStatement();
	datos=sen.executeQuery("select * from productos");
	out.println("<table>");
	while(datos.next()){
		out.println("<tr>");
			out.println("<td>"+datos.getInt(1)+"</td>");
			out.println("<td>"+datos.getString(2)+"</td>");
			out.println("<td>"+datos.getDouble(3)+"</td>");
			out.println("<td>"+datos.getInt(4)+"</td>");
		out.println("</tr>");
	}
	out.println("</table>");
%>
</body>
</html>