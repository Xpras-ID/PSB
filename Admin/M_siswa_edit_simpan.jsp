<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>

<%
	String kunci = request.getParameter("no_pendaftaran");
	String  tgl_pendaftaran = request.getParameter("tgl_pendaftaran");
	String  nama_pendaftar = request.getParameter("nama_pendaftar");
	String  tempat_lahir = request.getParameter("tempat_lahir");
	String  tgl_lahir = request.getParameter("tgl_lahir");
	String  jenis_kelamin_id = request.getParameter("jenis_kelamin_id");
	String  agama_id = request.getParameter("agama_id");
	String  alamat_siswa = request.getParameter("alamat_siswa");
	String  tahun_ajaran_id = request.getParameter("tahun_ajaran_id");
	String  asal_sekolah = request.getParameter("asal_sekolah");
	String  no_sttb = request.getParameter("no_sttb");
	String  nama_ayah = request.getParameter("nama_ayah");
	String  nama_ibu = request.getParameter("nama_ibu");
	String  pekerjaan_ayah = request.getParameter("pekerjaan_ayah");
	String  pekerjaan_ibu = request.getParameter("pekerjaan_ibu");
	String  alamat_ortu = request.getParameter("alamat_ortu");
	String  no_tlp_ortu = request.getParameter("no_tlp_ortu");
	String  rata_nilai = request.getParameter("rata_nilai");
	String  foto = request.getParameter("foto");

	try
	{
	String sql="Update M_siswa SET no_pendaftaran='"+kunci+"',nama_pendaftar='"+nama_pendaftar+"',tempat_lahir='"+tempat_lahir+"',tgl_lahir='"+tgl_lahir+"',jenis_kelamin_id='"+jenis_kelamin_id+"',agama_id='"+agama_id+"',alamat_siswa='"+alamat_siswa+"',tahun_ajaran_id='"+tahun_ajaran_id+"',asal_sekolah='"+asal_sekolah+"',no_sttb='"+no_sttb+"',nama_ayah='"+nama_ayah+"',nama_ibu='"+nama_ibu+"',pekerjaan_ayah='"+pekerjaan_ayah+"',pekerjaan_ibu='"+pekerjaan_ibu+"',alamat_ortu='"+alamat_ortu+"',no_tlp_ortu='"+no_tlp_ortu+"',rata_nilai='"+rata_nilai+"',foto='"+foto+"' where no_pendaftaran='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	statement.executeUpdate(sql); 
	statement.close();
	connection.close();  
	response.sendRedirect("M_siswa.jsp");
	} 
	catch (Exception e)
	{ String pesan = e.getMessage();
	response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}
	%>



