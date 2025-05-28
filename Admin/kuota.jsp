<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title></title>
<link rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style2 {font-family: "Bradley Hand ITC"; font-size: 12px; }
.style9 {font-family: "Bradley Hand ITC"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style11 {font-family: "Times New Roman"}
.style13 {font-size: 12px}
.style14 {font-weight: bold; font-family: "Times New Roman";}
.style15 {
	font-family: "Times New Roman";
	font-size: 14px;
	font-weight: bold;
}
.style16 {color: #000000}
.style17 {font-family: "Times New Roman"; color: #000000; }
-->
</style>
<script src="SpryAssets/SpryEffects.js" type="text/javascript"></script>
</head>

<body background="../images/back2.png">
<form id="form1" name="form1" method="post">


<p align="center" class="style15">JUMLAH SISWA DITERIMA</p>
<table width="521" border="0" align="center" cellpadding="0" cellspacing="1">
  
  <tr>
    <td width="170" bordercolor="#CCCCCC" bgcolor="#CCCCCC" class="style9"><div align="center" class="style11 style16">Edit</div></td>
    <td width="176" bordercolor="#CCCCCC" bgcolor="#CCCCCC" class="style9"><div align="center" class="style17">Jumlah Diterima</div></td>
    </tr>
   <%	String cari = request.getParameter("cari");
		Class.forName(url); 
		Connection connection = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement =connection.createStatement(); 
		String sql = "select * from tahun_ajaran where tahun_ajaran_id='"+cari+"' OR kuota like '%"+cari+"%'";
		if (cari == null)		
		sql = " select * from tahun_ajaran order by tahun_ajaran_id";
		ResultSet rs=statement.executeQuery(sql);		
		while (rs.next())
		{   
			String tahun_ajaran_id=rs.getString("tahun_ajaran_id");	
			//String jurusan=rs.getString("jurusan");
			String kuota=rs.getString("kuota");
			
			%>
  <tr>
    <td bgcolor="#00FFFF"><div align="center" class="style13">
      <input name="Submit" type="button" class="style14" onClick="window.open('kuota_edit.jsp?kode=<%out.print(tahun_ajaran_id);%>','mainFrame')" value="<% out.print(tahun_ajaran_id);%>" width="20" />
    </div></td>
    <td bgcolor="#00FFFF"><div align="center" class="style13">
      <% out.print(kuota);%>
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
