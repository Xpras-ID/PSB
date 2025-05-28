<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<%
	String kunci = request.getParameter("no_pendaftaran");
	String  nama_pendaftar = request.getParameter("nama_pendaftar");
	String  nama_ayah = request.getParameter("nama_ayah");
	String  nama_ibu = request.getParameter("nama_ibu");
	String  pekerjaan_ayah = request.getParameter("pekerjaan_ayah");
	String  pekerjaan_ibu = request.getParameter("pekerjaan_ibu");
	String  alamat_ortu = request.getParameter("alamat_ortu");
	String  no_tlp_ortu = request.getParameter("no_tlp_ortu");
	try
	{
	String sql="Update M_siswa SET no_pendaftaran='"+kunci+"',nama_pendaftar='"+nama_pendaftar+"',nama_ayah='"+nama_ayah+"',nama_ibu='"+nama_ibu+"',pekerjaan_ayah='"+pekerjaan_ayah+"',pekerjaan_ibu='"+pekerjaan_ibu+"',alamat_ortu='"+alamat_ortu+"',no_tlp_ortu='"+no_tlp_ortu+"' where no_pendaftaran='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	statement.executeUpdate(sql); 
	statement.close();
	connection.close();  
	response.sendRedirect("M_ortu.jsp");
	} 
	catch (Exception e)
	{ String pesan = e.getMessage();
	response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}
	%>



