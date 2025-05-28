<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<%
	String kunci = request.getParameter("no_pendaftaran");
	String nama_pendaftar = request.getParameter("nama_pendaftar");
	String rata_nilai = request.getParameter("rata_nilai");
	try
	{
	String sql="Update M_siswa SET no_pendaftaran='"+kunci+"',nama_pendaftar='"+nama_pendaftar+"',rata_nilai='"+rata_nilai+"' where no_pendaftaran='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	statement.executeUpdate(sql); 
	statement.close();
	connection.close();  
	response.sendRedirect("M_nilai.jsp");
	} 
	catch (Exception e)
	{ String pesan = e.getMessage();
	response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}
	%>



