<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>::Data Pendaftar::</title>
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
.style9 {color: #FFFFFF}
.style11 {font-family: "Times New Roman"}
.style13 {font-size: 12px}
.style15 {color: #000000}
.style16 {font-family: "Times New Roman"; font-size: 13px; font-weight: bold; color: #000000; }
.style17 {
	font-size: 12px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body background="../images/back2.png">
<form method="post" name="form1" id="form1">

<p align="right" class="style1 style4"><strong><span class="style11">Cari :
    </span>
  <input name="cari" type="text" id="cari" size="40"/>
    <blink>
    <input name="submit" type="submit" class="style6" id="submit" value="Cari" />
  </blink></strong></p>
<p align="center" class="style1 style5 style4"><strong>DATA ORANG TUA</strong></p>
<p align="right" class="style1 style5">&nbsp;</p>
<table width="1067" border="0" align="center" cellpadding="0" cellspacing="1">
  
  <tr>
    <td width="106" bordercolor="#CCCCCC" bgcolor="#CCCCCC" class="style6 style9"><div align="center" class="style11 style15">No Pendaftaran</div></td>
    <td width="138" height="17" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style6 style11 style15">Nama Calon Siswa</div></td>
    <td width="126" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style16">Nama Ayah</div></td>
    <td width="125" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style16">
      <div align="center">Nama Ibu </div>
    </div></td>
    <td width="131" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style16">Pekerjaan Ayah</div></td>
    <td width="132" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style16">Pekerjaan Ibu</div></td>
    <td width="210" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style16">Alamat Ortu</div></td>
    <td width="90" bordercolor="#CCCCCC" bgcolor="#CCCCCC"><div align="center" class="style16">No Tlp Ortu</div></td>
    </tr>
   <%	String cari = request.getParameter("cari");
		Class.forName(url); 
		Connection connection = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement =connection.createStatement(); 
		String sql = "select * from M_siswa where no_pendaftaran='"+cari+"' OR nama_pendaftar='"+cari+"' OR nama_ayah like '%"+cari+"%' OR nama_ibu like '%"+cari+"%' ";
		if (cari == null)		
		sql = " select * from M_siswa order by no_pendaftaran";
		ResultSet rs=statement.executeQuery(sql);		
		while (rs.next())
		{   
			String no_pendaftaran=rs.getString("no_pendaftaran");
			String nama_pendaftar=rs.getString("nama_pendaftar");	
			String nama_ayah=rs.getString("nama_ayah");
			String nama_ibu=rs.getString("nama_ibu");
			String pekerjaan_ayah=rs.getString("pekerjaan_ayah");	
			String pekerjaan_ibu=rs.getString("pekerjaan_ibu");
			String alamat_ortu=rs.getString("alamat_ortu");
			String no_tlp_ortu=rs.getString("no_tlp_ortu");
			
			%>
  <tr>
     <td bgcolor="#00FFFF"><div align="center" class="style17">
       <% out.print(no_pendaftaran);%>
     </div></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(nama_pendaftar);%>
     </span></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(nama_ayah);%>
     </span></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(nama_ibu);%>
     </span></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(pekerjaan_ayah);%>
     </span></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(pekerjaan_ibu);%>
     </span></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(alamat_ortu);%>
     </span></td>
     <td bgcolor="#00FFFF"><span class="style13">
       <% out.print(no_tlp_ortu);%>
     </span></td>
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
