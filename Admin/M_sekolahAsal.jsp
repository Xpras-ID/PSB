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
.style9 {font-family: "Bradley Hand ITC"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style11 {font-family: "Times New Roman"}
.style12 {font-family: "Times New Roman"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style13 {font-size: 12px}
.style15 {color: #000000}
.style16 {font-family: "Times New Roman"; font-size: 14px; }
.style17 {
	color: #0000FF;
	font-weight: bold;
}
-->
</style>
<script src="SpryAssets/SpryEffects.js" type="text/javascript"></script>
<script type="text/javascript">
<!--
function MM_popupMsg(msg) { //v1.0
  alert(msg);
}
//-->
</script>
</head>

<body background="../images/back2.png">
<form method="post" name="form1" id="form1">

<p align="right" class="style1 style4"><strong><span class="style11">Cari :</span>
    <input name="cari" type="text" id="cari" size="40"/>
    <blink>
    <input name="submit" type="submit" class="style6" id="submit" style="font-family: 'Times New Roman';" value="Cari" />
  </blink></strong></p>
<p align="center" class="style11 style4"><strong>DATA ASAL SEKOLAH</strong></p>
<p align="right" class="style5 style1 style11">
  <label></label>
</p>
<table width="1069" border="0" align="center" cellpadding="0" cellspacing="1">
  
  <tr>
    <td bordercolor="#CCCCCC" bgcolor="#FFFFFF" class="style9"><a href="asal_sekolah_tambah.jsp" target="mainFrame" class="style16">Tambah</a></td>
    <td bordercolor="#CCCCCC" bgcolor="#FFFFFF">&nbsp;</td>
    <td bordercolor="#CCCCCC" bgcolor="#FFFFFF">&nbsp;</td>
    <td bordercolor="#CCCCCC" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td width="211" bordercolor="#CCCCCC" bgcolor="#999999" class="style9"><div align="center" class="style11 style13 style15">No</div></td>
    <td width="230" bordercolor="#CCCCCC" bgcolor="#999999"><div align="center" class="style12 style13 style15">Nama Sekolah</div></td>
    <td width="524" bordercolor="#CCCCCC" bgcolor="#999999"><div align="center" class="style12 style13 style15"><strong>Alamat</strong></div></td>
    <td width="99" bordercolor="#CCCCCC" bgcolor="#999999">&nbsp;</td>
  </tr>
   <%	String cari = request.getParameter("cari");
		Class.forName(url); 
		Connection connection = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement =connection.createStatement(); 
		String sql = "select * from asal_sekolah where asal_sekolah_id='"+cari+"' OR nama='"+cari+"' OR alamat like '%"+cari+"%'  ";
		if (cari == null)		
		sql = " select * from asal_sekolah order by asal_sekolah_id";
		ResultSet rs=statement.executeQuery(sql);		
		while (rs.next())
		{   
			
			String asal_sekolah_id=rs.getString("asal_sekolah_id");
			String nama=rs.getString("nama");	
			String alamat=rs.getString("alamat");
		
			
			%>
  <tr>
    <td bgcolor="#00FFFF"><div align="center" class="style13">
      <% out.print(asal_sekolah_id);%>    </div></td>
    <td bgcolor="#00FFFF"><div align="center"><span class="style13">
      <% out.print(nama);%>
    </span></div></td>
    <td bgcolor="#00FFFF"><span class="style13">
      <% out.print(alamat);%>
    </span></td>
    <td bgcolor="#00FFFF"><div align="center" class="style4"><a href="javascript:decision('Anda Yakin  Menghapus : <%out.print(nama);%>','asal_sekolah_hapus.jsp?kode=<%out.print(asal_sekolah_id);%>','mainFrame')">
	     <div align="center"><span class="style21 style17">Delete</span> </div>
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
