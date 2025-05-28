<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<%
	String kunci = request.getParameter("tahun_ajaran_id");
	String tahun = request.getParameter("tahun");
	String kuota = request.getParameter("kuota");
	
	try
	{
	String sql="Update tahun_ajaran SET tahun_ajaran_id='"+kunci+"',tahun='"+tahun+"',kuota='"+kuota+"' where tahun_ajaran_id='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	statement.executeUpdate(sql); 
	statement.close();
	connection.close();  
	response.sendRedirect("ajaran.jsp");
	} 
	catch (Exception e)
	{ String pesan = e.getMessage();
	response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}
	%>



