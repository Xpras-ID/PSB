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
-->
</style>
</head>
<%
	String kunci = request.getParameter("kode");
	String sql="select * from tahun_ajaran where tahun_ajaran_id='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="ajaran_edit_simpan.jsp" method="post">
<p align="center">&nbsp;</p>
<p align="center"><strong>EDIT TAHUN AJARAN</strong></p>
<table width="1089" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">

          <tr class="style1">
            <td width="49">Kode</td>
            <td width="180"><input name="tahun_ajaran_id" type="text" id="tahun_ajaran_id" size="30" readonly="readonly" value="<%out.print(rs.getString("tahun_ajaran_id"));%>"/></td>
            <td width="100">TahunAjaran</td>
            <td width="300"><input name="tahun" type="text" id="tahun" size="50" value="<%out.print(rs.getString("tahun"));%>"/></td>
            <td width="50">Kuota</td>
            <td width="120"><input name="kuota" type="text" id="kuota" size="20" value="<%out.print(rs.getString("kuota"));%>"/></td>
            <td width="62"><input name="Submit" type="submit" class="style1" value="Simpan" /></td>
            <td width="56"><input name="hapus" type="button" class="style1" id="hapus" onclick="window.open('ajaran_hapus.jsp?kode=<%out.print(kunci);%>','mainFrame')" value="Hapus" /></td>
            <td width="82"><input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Batal"/></td>
          </tr>
        </table>
</form>
</body>
</html>
