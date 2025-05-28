<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>::Data Nilai::</title>
<link rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-family: "Bradley Hand ITC"}
.style2 {font-family: "Bradley Hand ITC"; font-size: 12px; }
.style4 {font-size: 14px}
.style5 {
	font-size: 16px;
	font-family: "Times New Roman";
}
.style6 {
	font-family: "Times New Roman";
	font-size: 13px;
	font-weight: bold;
}
.style9 {font-family: "Bradley Hand ITC"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style11 {font-family: "Times New Roman"}
.style12 {
	font-family: "Times New Roman";
	font-size: 13px;
	font-weight: bold;
	color: #000000;
}
.style13 {	font-family: "Times New Roman";
	font-weight: bold;
}
.style14 {font-size: 12px}
.style15 {color: #000000}
.style16 {font-family: "Times New Roman"; color: #000000; }
.style17 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<script src="SpryAssets/SpryEffects.js" type="text/javascript"></script>
</head>

<body background="../images/back2.png">
<form method="post" name="form1" id="form1">

<p align="right" class="style1 style4"><strong><span class="style11">Cari :
    </span>
  <input name="cari" type="text" id="cari" size="40"/>
    <blink>
    <input name="submit" type="submit" class="style6" id="submit" value="Cari" />
  </blink></strong></p>
<p align="center" class="style5 style1 style4"><strong>DATA NILAI</strong></p>
<p align="right" class="style5 style1">&nbsp;</p>
<table width="790" border="0" align="center" cellpadding="0" cellspacing="1">
  
  <tr>
    <td width="206" bordercolor="#CCCCCC" bgcolor="#CCCCCC" class="style9"><div align="center" class="style11 style15">No Pendaftaran</div></td>
    <td width="404" bordercolor="#CCCCCC" bgcolor="#CCCCCC" class="style9"><div align="center" class="style16">Nama Calon Siswa</div></td>
    <td width="377" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style12">Rata-Rata Nilai</div></td>
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
			String rata_nilai=rs.getString("rata_nilai");
			
			%>
  <tr>
    <td bgcolor="#00FFFF"><div align="center" class="style14 style17">
      <% out.print(no_pendaftaran);%>
    </div></td>
    <td bgcolor="#00FFFF"><span class="style14">
      <% out.print(nama_pendaftar);%>
    </span></td>
    <td bgcolor="#00FFFF"><div align="center" class="style14">
      <% out.print(rata_nilai);%>
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
