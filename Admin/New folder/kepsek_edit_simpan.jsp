<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<%
	String kunci = request.getParameter("id_kepsek");
	String nip = request.getParameter("nip");
	String nama_kepsek = request.getParameter("nama_kepsek");
	String status = request.getParameter("status");
	String ket = request.getParameter("ket");
	try
	{
	String sql="Update kepsek SET id_kepsek='"+kunci+"',nip='"+nip+"',nama_kepsek='"+nama_kepsek+"',status='"+status+"',ket='"+ket+"' where id_kepsek='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	statement.executeUpdate(sql); 
	statement.close();
	connection.close();  
	response.sendRedirect("kepsek.jsp");
	} 
	catch (Exception e)
	{ String pesan = e.getMessage();
	response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}
	%>



