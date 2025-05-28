<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>

<%

	//String  asal_sekolah_id = request.getParameter("asal_sekolah_id");
	String  nama = request.getParameter("nama");
		String  alamat = request.getParameter("alamat");

		
	try
	{
	String sql="insert into asal_sekolah( nama,alamat) Values('"+nama+"','"+alamat+"')";
	
		Class.forName(url);
		Connection connection = DriverManager.getConnection(koneksi,username,pass);
		Statement statement =connection.createStatement(); 
		statement.executeUpdate(sql); 
		statement.close();
		connection.close();  
		response.sendRedirect("M_sekolahAsal.jsp");
	} 
	catch (Exception e)
	{ 	String pesan = e.getMessage();
		response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}	
%>

