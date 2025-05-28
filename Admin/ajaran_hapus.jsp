<%@ include file="segarkan.jsp" %>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<%
	String kunci = request.getParameter("kode");
	String sql="Delete from tahun_ajaran where tahun_ajaran_id ='"+kunci+ "'";
	try
	{
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);	
	Statement statement =connection.createStatement(); 
	statement.executeUpdate(sql); 
	statement.close();
	connection.close(); 
	response.sendRedirect("ajaran.jsp");
	} catch (Exception e)
	{ String pesan = e.getMessage();
		response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
		}
%>


