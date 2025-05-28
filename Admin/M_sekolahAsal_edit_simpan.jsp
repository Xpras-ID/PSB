<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>

<%
	String  kunci = request.getParameter("asal_sekolah_id");
	String  nama = request.getParameter("nama");
	String  alamat = request.getParameter("alamat");
	
	try
	{
	String sql="Update asal_sekolah SET asal_sekolah_id='"+kunci+"',nama='"+nama+"',alamat='"+alamat+"' where asal_sekolah_id='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	statement.executeUpdate(sql); 
	statement.close();
	connection.close();  
	response.sendRedirect("M_sekolahAsal.jsp");
	} 
	catch (Exception e)
	{ String pesan = e.getMessage();
	response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}
	%>



