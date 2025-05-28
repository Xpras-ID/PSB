<%@ page  import="java.sql.*" %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>

<%  
	String  id_kepsek = request.getParameter("id_kepsek");
	String  nip = request.getParameter("nip");
	String  nama_kepsek = request.getParameter("nama_kepsek");
	String  status = request.getParameter("status");
	String  ket = request.getParameter("ket");
	
	
	String sql="insert into kepsek(id_kepsek,nip,nama_kepsek,status,ket) Values('"+id_kepsek+"','"+nip+"','"+nama_kepsek+"','"+status+"','"+ket+"')";
	try
	{
		Class.forName(url);
		Connection connection = DriverManager.getConnection(koneksi,username,pass);
		Statement statement =connection.createStatement(); 
		statement.executeUpdate(sql); 
		statement.close();
		connection.close();  
		response.sendRedirect("kepsek.jsp");
	} 
	catch (Exception e)
	{ 	String pesan = e.getMessage();
		response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}	
%>

