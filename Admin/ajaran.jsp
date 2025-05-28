<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style2 {
	font-family: "Times New Roman";
	font-weight: bold;
}
.style3 {
	font-size: 16px
}
.style6 {
	font-family: "Bradley Hand ITC";
	color: #000000;
	font-weight: bold;
	font-size: 14px;
}
.style7 {font-family: "Times New Roman"}
.style8 {
	color: #000000;
	font-size: 14px;
	font-weight: bold;
}
.style9 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>

<body background="../images/back2.png">
<form id="form1" name="form1" method="post">


<p align="center" class="style2 style3 "><strong>TAHUN AJARAN </strong></p>
<p align="right"><a href="ajaran_tambah.jsp" target="mainFrame"></a></p>
<table width="501" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="212" bgcolor="#CCCCCC"><div align="center" class="style8">Edit</div></td>
    <td width="152" bgcolor="#CCCCCC"><div align="center" class="style6">
      <div align="left" class="style7">
        <div align="center">Tahun Ajaran</div>
      </div>
    </div></td>
    <td width="152" bgcolor="#CCCCCC"><div align="center" class="style9">Jumlah Diterima</div></td>
  </tr>
   <%	String cari = request.getParameter("cari");
		Class.forName(url); 
		Connection connection = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement =connection.createStatement(); 
		String sql = " select * from tahun_ajaran where tahun_ajaran_id='"+cari+"' OR tahun like '%"+cari+"%' ";
		if (cari == null)		
		sql = " select * from tahun_ajaran order by tahun_ajaran_id";
		ResultSet rs=statement.executeQuery(sql);		
		while (rs.next())
		{   
			String tahun_ajaran_id=rs.getString(1);	
			String tahun=rs.getString(2);
			String kuota=rs.getString(3);
			%>
  <tr>
    <td bgcolor="#00FFFF"><div align="center">
      <input name="Submit" type="button" class="style2" width="20" onclick="window.open('ajaran_edit.jsp?kode=<%out.print(tahun_ajaran_id);%>','mainFrame')" value="<% out.print(tahun_ajaran_id);%>" />
    </div></td>
    <td bgcolor="#00FFFF">
      <div align="left">
        <% out.print(tahun);%>
        </div></td>
    <td bgcolor="#00FFFF"><div align="center">
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
