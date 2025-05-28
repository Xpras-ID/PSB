<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-weight: bold}
.style2 {font-style: italic}
.style3 {
	color: #FF0000;
	font-size: 12px;
}
-->
</style>
</head>
<link type="text/css" href="development-bundle/themes/sunny/ui.all.css" rel="stylesheet" />
                  <script type="text/javascript" src="development-bundle/jquery-1.3.2.js"></script>
                  <script type="text/javascript" src="development-bundle/ui/ui.datepicker.js"></script>
	 <script type="text/javascript" src="development-bundle/ui/i18n/ui.datepicker-id.js"></script>
	  <script type="text/javascript" src="development-bundle/ui/effects.core.js"></script>
                 
            <script type="text/javascript">
 $(document).ready(function(){
      
		 $("#tgl_pendaftaran").datepicker({
									dateFormat :"yy-mm-dd",
									 changeMonth : true,
									 changeYear : true,			 
									 showOn :"button",
									buttonImage: "development-bundle/demos/images/calendar.gif",
									buttonImageOnly:true			 
									 });
		 $("#tgl_lahir").datepicker({
									 dateFormat :"yy-mm-dd",
									 changeMonth : true,
									 changeYear : true,
									 showOn :"button",
									buttonImage: "development-bundle/demos/images/calendar.gif",
									buttonImageOnly:true
									 });
	});
 </script>
<%
	String kunci = request.getParameter("kode");
	String sql="select * from M_siswa where no_pendaftaran='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="M_siswa_edit_simpan.jsp" method="post">
<p align="center"><strong>EDIT DATA SISWA</strong></p>
<table width="694" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">
          <tr>
            <td>No Pendaftaran</td>
            <td>:</td>
            <td><input name="no_pendaftaran" type="text" id="no_pendaftaran" size="20" value="<%out.print(rs.getString("no_pendaftaran"));%>" readonly="readonly"/>
              <span class="style3"> *
            Read Only</span></td>
    </tr>
          <tr>
            <td>Tgl Pendaftaran</td>
            <td>:</td>
            <td><input name="tgl_pendaftaran" type="text" id="tgl_pendaftaran" size="20" value="<%out.print(rs.getString("tgl_pendaftaran"));%>"/></td>
          </tr>
          <tr>
            <td width="163"><div align="left">Nama Lengkap</div></td>
            <td width="10">:</td>
            <td width="491"><label>
              <input name="nama_pendaftar" type="text" id="nama_pendaftar" size="50" value="<%out.print(rs.getString("nama_pendaftar"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td><div align="left">Tempat lahir </div></td>
            <td>:</td>
            <td><label>
              <input name="tempat_lahir" type="text" id="tempat_lahir" size="50" value="<%out.print(rs.getString("tempat_lahir"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td><div align="left">Tanggal Lahir </div></td>
            <td>:</td>
            <td><label>
            <input name="tgl_lahir" type="text" id="tgl_lahir" size="20" value="<%out.print(rs.getString("tgl_lahir"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td><div align="left">Jenis Kelamin </div></td>
            <td>:</td>
            <td><label>
              <select name="jenis_kelamin_id" class="tombol" id="jenis_kelamin_id" width="50">
            <option value="<%out.print(rs.getString("jenis_kelamin_id"));%>"  selected="selected"> 
                <%
			    Class.forName(url);
				Connection jenis_kelamin= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_jenis = jenis_kelamin.createStatement();
				String sql_jenis="select * from jenis_kelamin";
				ResultSet rs_jenis=Stat_jenis.executeQuery(sql_jenis);
				while(rs_jenis.next())
				{ 
					String id_jenis = rs_jenis.getString("jenis_kelamin_id");
					String Jenis_kelamin = rs_jenis.getString("jenis_kelamin");
					out.println("<option value=\"" +Jenis_kelamin+"\">"+Jenis_kelamin+"</option>"); 
			 	}	
				
			%>
              </option>
            </select>
            </label></td>
          </tr>
          <tr>
            <td><div align="left">Agama</div></td>
            <td>:</td>
            <td><label>
              <select name="agama_id" class="tombol" id="agama_id" width="50">
              <option value="<%out.print(rs.getString("agama_id"));%>"  selected="selected">
                  <%
			    Class.forName(url);
				Connection agama= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_agama = agama.createStatement();
				String sql_agama="select * from agama";
				ResultSet rs_agama=Stat_agama.executeQuery(sql_agama);
				while(rs_agama.next())
				{ 
					String id_agama = rs_agama.getString("agama_id");
					String Agama = rs_agama.getString("agama");
					out.println("<option value=\"" +Agama+"\">"+Agama+"</option>"); 
			 	}	
				
			%>
                </option>
              </select>
            </label></td>
          </tr>
          <tr>
            <td height="30"><div align="left">Alamat Lengkap</div></td>
            <td>:</td>
            <td><label>
              <input name="alamat_siswa" type="text" id="alamat_siswa" size="80"value="<%out.print(rs.getString("alamat_siswa"));%>" />
            </label></td>
          </tr>
          
          <tr>
            <td height="25">Tahun Ajaran</td>
            <td>:</td>
            <td><select name="tahun_ajaran_id" class="tombol" id="tahun_ajaran_id" width="50">
            <option value="<%out.print(rs.getString("tahun_ajaran_id"));%>" selected="selected"> 
                <%
			    Class.forName(url);
				Connection tahun_ajaran= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_tahun = tahun_ajaran.createStatement();
				String sql_tahun="select * from tahun_ajaran";
				ResultSet rs_tahun=Stat_tahun.executeQuery(sql_tahun);
				while(rs_tahun.next())
				{ 
					String id_thnAjaran = rs_tahun.getString("tahun_ajaran_id");
					String thn_ajaran = rs_tahun.getString("tahun");
					out.println("<option value=\"" +thn_ajaran+"\">"+thn_ajaran+"</option>"); 
			 	}	
				
			%>
              </option>
            </select></td>
          </tr>
          <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>Asal Sekolah </td>
            <td>:</td>
            <td><select name="asal_sekolah" class="tombol" id="asal_sekolah" width="50">
                <option value="<%out.print(rs.getString("asal_sekolah"));%>"  selected="selected">
                  <%
			    Class.forName(url);
				Connection asal= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_asal = asal.createStatement();
				String sql_asal="select * from asal_sekolah";
				ResultSet rs_asal=Stat_asal.executeQuery(sql_asal);
				while(rs_asal.next())
				{ 
					String id_asal = rs_asal.getString("asal_sekolah_id");
					String nama = rs_asal.getString("nama");
					out.println("<option value=\"" +nama+"\">"+nama+"</option>"); 
			 	}	
				
			%>
                </option>
              </select></td>
          </tr>
          <tr>
            <td>No. STTB dan Tgl STTB</td>
            <td>&nbsp;</td>
            <td><input name="no_sttb" type="text" id="no_sttb" size="50" value="<%out.print(rs.getString("no_sttb"));%>"/></td>
          </tr>
          
          <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>Nama Ayah </td>
            <td>:</td>
            <td><label>
              <input name="nama_ayah" type="text" id="nama_ayah" size="50" value="<%out.print(rs.getString("nama_ayah"));%>" />
            </label></td>
          </tr>
          <tr>
            <td>Nama Ibu </td>
            <td>:</td>
            <td><label>
              <input name="nama_ibu" type="text" id="nama_ibu" size="50" value="<%out.print(rs.getString("nama_ibu"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td>Pekerjaan Ayah</td>
            <td>:</td>
            <td><label>
              <input name="pekerjaan_ayah" type="text" id="pekerjaan_ayah" size="40" value="<%out.print(rs.getString("pekerjaan_ayah"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td>Pekerjaan Ibu</td>
            <td>:</td>
            <td><label>
              <input name="pekerjaan_ibu" type="text" id="pekerjaan_ibu" size="40" value="<%out.print(rs.getString("pekerjaan_ibu"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td>Alamat Orang Tua</td>
            <td>:</td>
            <td><label>
              <input name="alamat_ortu" type="text" id="alamat_ortu" size="40" value="<%out.print(rs.getString("alamat_ortu"));%>"/>
            </label></td>
          </tr>
          <tr>
            <td height="28">No Telepon Orang Tua</td>
            <td>:</td>
            <td><label>
              <input name="no_tlp_ortu" type="text" id="no_tlp_ortu" size="30" value="<%out.print(rs.getString("no_tlp_ortu"));%>" />
            </label></td>
          </tr>
          
          <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25">Jumlah Nilai UASBN</td>
            <td>:</td>
            <td><input name="rata_nilai" type="text" id="rata_nilai" size="25" value="<%out.print(rs.getString("rata_nilai"));%>"/></td>
          </tr>
          <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
            <td><img src="image/<%out.print(rs.getString("foto"));%>" alt="" width="150" height="180"/></td>
          </tr>
          <tr>
            <td height="25">Foto</td>
            <td>:</td>
            <td><input name="foto" type="file" id="foto" size="20" /></td>
          </tr>
          
          <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="25" class="style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td><input name="Submit" type="submit" class="style1" value="Simpan" />
              <input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Batal"/></td>
          </tr>
  </table>
</form>
</body>
</html>
