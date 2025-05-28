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
.style1 {font-family: "Bradley Hand ITC"}
.style2 {font-family: "Bradley Hand ITC"; font-size: 12px; }
.style5 {
	font-size: 16px;
	font-family: "Times New Roman";
}
.style9 {font-family: "Bradley Hand ITC"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style11 {font-family: "Times New Roman"}
.style12 {font-family: "Times New Roman"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style13 {font-family: "Times New Roman"; font-size: 12px; font-weight: bold; color: #FFFFFF; }
.style14 {font-size: 14px}
.style15 {font-size: 12px}
.style16 {font-weight: bold; font-family: "Times New Roman";}
-->
</style>
<script src="SpryAssets/SpryEffects.js" type="text/javascript"></script>
</head>

<body background="../images/back2.png">
<form id="form1" name="form1" method="post">


<p align="center" class="style5 style1 style14"><strong>KEPALA SEKOLAH</strong></p>
<table width="803" border="0" align="center" cellpadding="0" cellspacing="1">
  <tr>
    <td bordercolor="#CCCCCC" class="style13"><a href="kepsek_tambah.jsp" target="mainFrame"><input name="button" type="submit" class="style16" id="button" value="Tambah" /></a></td>
    <td bordercolor="#CCCCCC" class="style9">&nbsp;</td>
    <td bordercolor="#CCCCCC" class="style12">&nbsp;</td>
    <td bordercolor="#CCCCCC" class="style12">&nbsp;</td>
    <td bordercolor="#CCCCCC" class="style12">&nbsp;</td>
  </tr>
  <tr>
    <td width="179" bordercolor="#CCCCCC" bgcolor="#333333" class="style13"><div align="center">No</div></td>
    <td width="107" bordercolor="#CCCCCC" bgcolor="#333333" class="style9"><div align="center" class="style11"> 
      <div align="center">Nip</div>
    </div></td>
    <td width="226" bordercolor="#CCCCCC" bgcolor="#333333" class="style12"><div align="center">Nama Kepala Sekolah</div></td>
    <td width="77" bordercolor="#CCCCCC" bgcolor="#333333" class="style12"><div align="center">Status</div></td>
    <td width="208" bordercolor="#CCCCCC" bgcolor="#333333" class="style12"><div align="center">Keterangan</div></td>
  </tr>
  <%	String cari = request.getParameter("cari");
		Class.forName(url); 
		Connection connection = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement =connection.createStatement(); 
		String sql = "select * from kepsek where id_kepsek='"+cari+"'";
		if (cari == null)		
		sql = " select * from kepsek order by id_kepsek";
		ResultSet rs=statement.executeQuery(sql);		
		while (rs.next())
		{   
			String id_kepsek=rs.getString("id_kepsek");	
			String nip=rs.getString("nip");	
			String nama_kepsek=rs.getString("nama_kepsek");
			String status=rs.getString("status");
			String ket=rs.getString("ket");
			%>
  <tr>
    <td bgcolor="#CCCCCC"><div align="center" class="style15">
      <input name="Submit2" type="button" class="style16" onclick="window.open('kepsek_edit.jsp?kode=<%out.print(id_kepsek);%>','mainFrame')" value="<% out.print(id_kepsek);%>" width="20" />
    </div></td>
    <td bgcolor="#CCCCCC"><div align="center" class="style15"><% out.print(nip);%></div></td>
    <td bgcolor="#CCCCCC"><div align="center" class="style15">
      <% out.print(nama_kepsek);%>
    </div></td>
    <td bgcolor="#CCCCCC"><div align="center" class="style15">
      <% out.print(status);%>
    </div></td>
    <td bgcolor="#CCCCCC"><div align="center" class="style15">
      <% out.print(ket);%>
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
