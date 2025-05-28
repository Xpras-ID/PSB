<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style2 {font-size: 16px}
.style3 {
	font-size: 14px;
	font-weight: bold;
}
.style4 {font-weight: bold}
-->
</style>
</head>

<body background="../images/back2_.png">

<form id="form1" name="form1" method="post" action="akuntansi.jsp">
<p align="center" class="style4 style2"><img src="../images/dd.png" width="195" height="164" /></p>
<p align="center" class="style4 style2"><strong><blink></blink></strong>Program Keahlian</p>
<p align="center" class="style4 style2"><span class="style3">AKUNTANSI</span></p>
<table width="405" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><div align="center"><strong>Tahun Ajaran </strong></div></td>
    <td><div align="center"><strong>
      <select name="cari" class="tombol" id="cari" width="50">
        <option value="0"  selected="selected">-- Tahun Ajaran
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
      </select>
    </strong></div></td>
    <td><div align="center"><strong>
      <input name="submit" type="submit" id="submit" style="font:'Times New Roman'; font-weight: bold;" value="Execute" />
    </strong></div></td>
  </tr>
</table>
<p align="center" class="style4 style2">&nbsp;</p>
</form>
<p align="right" class="style1 style4"><strong><blink></blink></strong></p>
</body>
</html>
