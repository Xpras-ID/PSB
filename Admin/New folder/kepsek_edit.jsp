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
.style2 {font-size: 12px}
.style3 {
	font-size: 14px;
	font-weight: bold;
}
.style4 {font-size: 14px}
-->
</style>
</head>
<%
	String kunci = request.getParameter("kode");
	String sql="select * from kepsek where id_kepsek='"+kunci+"'";
	Class.forName(url);
	Connection connection = DriverManager.getConnection(koneksi,username,pass);
	Statement statement =connection.createStatement(); 
	ResultSet rs=statement.executeQuery(sql);
	rs.next();
%> 
<body background="../images/back2.png">
<form id="form1" name="form1" action="kepsek_edit_simpan.jsp" method="post">

<p align="center" class="style3">EDIT KEPALA SEKOLAH</p>

<table width="437" border="0" align="center" cellpadding="5" cellspacing="0" class="style1">

          <tr class="style1">
            <td><div align="left" class="style2">Id</div></td>
            <td>              <input name="id_kepsek" type="text" id="id_kepsek" size="10" readonly="readonly" value="<%out.print(rs.getString("id_kepsek"));%>"/>            </td>
          </tr>
          <tr class="style1">
            <td><div align="left" class="style2">Nip</div></td>
            <td><input name="nip" type="text" id="nip" size="20" value="<%out.print(rs.getString("nip"));%>"/></td>
          </tr>
          <tr class="style1">
            <td><div align="left" class="style2">Nama Lengkap</div></td>
            <td><input name="nama_kepsek" type="text" id="nama_kepsek" size="40" value="<%out.print(rs.getString("nama_kepsek"));%>"/></td>
          </tr>
          <tr class="style1">
            <td><div align="left" class="style2">Status</div></td>
            <td><select name="status" class="tombol" id="status" width="50">
              <option value="<%out.print(rs.getString("status"));%>"  selected="selected">
              <%
			    Class.forName(url);
				Connection agama= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_agama = agama.createStatement();
				String sql_agama="select * from kep_status";
				ResultSet rs_agama=Stat_agama.executeQuery(sql_agama);
				while(rs_agama.next())
				{ 
					String Id = rs_agama.getString("id");
					String Status = rs_agama.getString("status");
					out.println("<option value=\"" +Status+"\">"+Status+"</option>"); 
			 	}	
				
			%>
              </option>
            </select></td>
          </tr>
          <tr class="style1">
            <td><div align="left" class="style2">Ket</div></td>
            <td><input name="ket" type="text" id="ket" size="30" value="<%out.print(rs.getString("ket"));%>"/></td>
          </tr>
          <tr class="style1">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr class="style1">
            <td width="163">&nbsp;</td>
            <td width="254"><span class="style4">
            <input name="Submit" type="submit" class="style1" value="Simpan" />
            <input name="hapus" type="button" class="style1" id="hapus" onclick="window.open('kepsek_hapus.jsp?kode=<%out.print(kunci);%>','mainFrame')" value="Hapus" />
            <input name="Submit2" type="button" class="style1" onclick="window.history.back()" value="Batal"/>
            </span></td>
          </tr>
        </table>
</form>
</body>
</html>
