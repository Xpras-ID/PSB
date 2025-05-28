<%@ page import="java.sql.*"  %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>

<%
	//String kunci = request.getParameter("no_pendaftaran");
	String  tgl_pendaftaran = request.getParameter("tgl_pendaftaran");
	String  nama_pendaftar = request.getParameter("nama_pendaftar");
	String  tempat_lahir = request.getParameter("tempat_lahir");
	String  tgl_lahir = request.getParameter("tgl_lahir");
	String  jenis_kelamin_id = request.getParameter("jenis_kelamin_id");
	String  agama_id = request.getParameter("agama_id");
	String  alamat_siswa = request.getParameter("alamat_siswa");
	//String  hobi = request.getParameter("hobi");
	//String  no_tlp_siswa = request.getParameter("no_tlp_siswa");
	//String  jurusan_id = request.getParameter("jurusan_id");
	String  tahun_ajaran_id = request.getParameter("tahun_ajaran_id");
	
	String  asal_sekolah = request.getParameter("asal_sekolah");
	//String  alamat_sekolah_asal = request.getParameter("alamat_sekolah_asal");
	String  no_sttb = request.getParameter("no_sttb");
	//String  no_tlp_sekolah = request.getParameter("no_tlp_sekolah");
	
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
	String sql="insert into M_siswa(tgl_pendaftaran, nama_pendaftar, tempat_lahir, tgl_lahir, jenis_kelamin_id, agama_id, alamat_siswa, tahun_ajaran_id, asal_sekolah,no_sttb, nama_ayah, nama_ibu, pekerjaan_ayah, pekerjaan_ibu, alamat_ortu, no_tlp_ortu, rata_nilai,foto) Values('"+tgl_pendaftaran+"','"+nama_pendaftar+"','"+tempat_lahir+"','"+tgl_lahir+"','"+jenis_kelamin_id+"','"+agama_id+"','"+alamat_siswa+"','"+tahun_ajaran_id+"','"+asal_sekolah+"','"+no_sttb+"','"+nama_ayah+"','"+nama_ibu+"','"+pekerjaan_ayah+"','"+pekerjaan_ibu+"','"+alamat_ortu+"','"+no_tlp_ortu+"','"+rata_nilai+"','"+foto+"')";
	
		Class.forName(url);
		Connection connection = DriverManager.getConnection(koneksi,username,pass);
		Statement statement =connection.createStatement(); 
		statement.executeUpdate(sql); 
		statement.close();
		connection.close();  
		response.sendRedirect("M_siswa.jsp");
	} 
	catch (Exception e)
	{ 	String pesan = e.getMessage();
		response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}	
%>

