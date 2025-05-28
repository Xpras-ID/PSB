<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<SCRIPT LANGUAGE="Javascript">
<!---konfirmasi delete
function decision(message, url)
{
  if(confirm(message) )
  {
    location.href = url;
  }
}
// --->
<!---action
function action(url)
{
   location.href = url;
}
// --->
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>::Data Pendaftar::</title>
<link rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-family: "Bradley Hand ITC"}
.style2 {font-family: "Bradley Hand ITC"; font-size: 12px; }
.style4 {font-size: 14px}
.style5 {font-size: 16px}
.style6 {
	font-family: "Times New Roman";
	font-size: 13px;
	font-weight: bold;
}
.style7 {
	color: #FFFFFF;
	font-family: "Times New Roman";
	font-size: 14px;
}
.style8 {font-family: "Bradley Hand ITC"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style9 {font-family: "Times New Roman"}
-->
</style>
<link href="development-bundle/css/tabs-1.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style10 {
	font-family: "Times New Roman";
	font-size: 14px;
	font-weight: bold;
	color: #000000;
}
.style13 {font-size: 12px}
.style14 {font-weight: bold; font-family: "Times New Roman";}
.style15 {color: #000000}
.style16 {color: #0000FF}
-->
</style>
</head>

<body background="../images/back2.png">
<form method="post" name="form1" id="form1">

<p align="right" class="style1 style4"><strong><span class="style9">Cari :
    </span>
  <input name="cari" type="text" id="cari" size="40"/>
    <blink>
    <input name="submit" type="submit" id="submit" style="font:'Times New Roman'; font-weight: bold;" value="Cari" />
  </blink></strong></p>
<p align="center" class="style1 style5"><span class="style9 style4"><strong>DATA CALON SISWA </strong><a href="InputData.jsp"><blink>
  </blink></a></span></p>
<p align="right" class="style1 style5"><a href="http://localhost:8080/result?report=Data_siswa.fr3" target="mainFrame"> 
  <input name="button2" type="button" class="style14" id="button2" value="CETAK" />
 </a></p>

<table width="1069" border="0" align="center" cellpadding="0" cellspacing="1">
  
  <tr>
    <td width="206" height="25" border="1" bgcolor="#CCCCCC"><div align="center" class="style6 style7 style15">
      <div align="center" class="style13">No Pendaftaran </div>
    </div></td>
    <td width="251" bordercolor="#FFFFFF" bgcolor="#CCCCCC"><div align="center" class="style10">
      <div align="center" class="style13">Nama Calon Siswa </div>
    </div></td>
    <td width="87" bordercolor="#FFFFFF" bgcolor="#CCCCCC"><div align="center" class="style8 style9 style4 style15">Jenis Kelamin</div></td>
    <td width="234" bordercolor="#FFFFFF" bgcolor="#CCCCCC"><div align="center" class="style8 style9 style4 style15">Alamat</div></td>
    
    <td width="85" bordercolor="#FFFFFF" bgcolor="#CCCCCC"><div align="center" class="style8 style9 style4 style15">Tahun Ajaran</div></td>
    <td width="102" bordercolor="#FFFFFF" bgcolor="#CCCCCC"><div align="center"><strong>Image</strong></div></td>
    <td colspan="2" bordercolor="#FFFFFF" bgcolor="#CCCCCC">&nbsp;</td>
  </tr>
   <%	String cari = request.getParameter("cari");
		Class.forName(url); 
		Connection connection = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement =connection.createStatement(); 
		String sql = "select * from M_siswa where no_pendaftaran='"+cari+"' OR nama_pendaftar like '%"+cari+"%'";
		if (cari == null)		
		sql = " select * from M_siswa order by no_pendaftaran";
		ResultSet rs=statement.executeQuery(sql);		
		while (rs.next())
		{   
			String no_pendaftaran=rs.getString("no_pendaftaran");	
			String nama_pendaftar=rs.getString("nama_pendaftar");
			String jenis_kelamin_id=rs.getString("jenis_kelamin_id");
			String alamat_siswa=rs.getString("alamat_siswa");
			//String jurusan_id=rs.getString("jurusan_id");
			String tahun_ajaran_id=rs.getString("tahun_ajaran_id");
			//String petugas=rs.getString("petugas");
			%>
  <tr>
     <td bgcolor="#00FFFF"><div align="center" class="style13">
       <input name="Submit" type="button" class="style14" onclick="window.open('M_siswa_edit.jsp?kode=<%out.print(no_pendaftaran);%>','mainFrame')" value="<% out.print(no_pendaftaran);%>" width="20" />
     </div></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(nama_pendaftar);%>
     </span></td>
     <td bgcolor="#00FFFF">
      <div align="center" class="style13">
        <% out.print(jenis_kelamin_id);%>
      </div></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(alamat_siswa);%>
     </span></td>
     <td bgcolor="#00FFFF"><div align="center" class="style13"><% out.print(tahun_ajaran_id);%></div></td>
     <td bgcolor="#00FFFF"><div align="center">
       <p><img src="image/<%out.print(rs.getString("foto"));%>" width="83" height="92"/></p>
       </div></td>
     <td width="50" bgcolor="#00FFFF"><span class="style13">
       <input name="Submit2" type="button" class="style14" onclick="window.open('Tampil_siswa.jsp?kode=<%out.print(no_pendaftaran);%>','mainFrame')" value="View"  width="20" />
     </span></td>
     <td width="45" bgcolor="#00FFFF"><a href="javascript:decision('Anda Yakin  Menghapus : <%out.print(nama_pendaftar);%>','M_siswa_hapus.jsp?kode=<%out.print(no_pendaftaran);%>','mainFrame')">
	     <div align="center"><span class="style21 style16"><strong>Delete</strong></span> </div>
	 </div></td>
  </tr>
 <%
	}	
%>
</table>
<p align="right" class="style2">
  <label></label>
</form>
</body>
</html>
