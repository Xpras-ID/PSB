<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
 <%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-family: "Times New Roman";
	font-weight: bold;
}
.style4 {font-family: "Times New Roman"; font-weight: bold; font-size: 12px; }
.style7 {font-size: 14px}
-->
</style>
<script type="text/javascript">
<!--
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
    } if (errors) alert('The following error(s) occurred:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
//-->
</script>
</head>

<body background="../images/back2.png">
<form id="form1" name="form1" method="get" action="kepsek_simpan.jsp">
  <p>&nbsp;</p>
  <p align="center" class="style25 style1 style7">TAMBAH DATA KEPALA SEKOLAH</p>
  <table width="350" border="0" align="center" cellpadding="5" cellspacing="0">

    <tr>
      <td width="174"><span class="style4">Id</span></td>
      <td width="156"><input name="id_kepsek" type="text" id="id_kepsek" size="25" /></td>
    </tr>
    <tr>
      <td><span class="style4">Nip</span></td>
      <td><input name="nip" type="text" id="nip" size="25" /></td>
    </tr>
    <tr>
      <td><span class="style4">Nama Lengkap</span></td>
      <td><input name="nama_kepsek" type="text" id="nama_kepsek" size="25" /></td>
    </tr>
    <tr>
      <td><span class="style4">Status</span></td>
      <td><select name="status" class="tombol" id="status" width="70">
        <option value="0"  selected="selected">--Status
          <%
			    Class.forName(url);
				Connection pendaftar= DriverManager.getConnection(koneksi,username,pass);
				Statement Stat_pendaftar = pendaftar.createStatement();
				String sql_pendaftar="select * from kep_status";
				ResultSet rs_pendaftar=Stat_pendaftar.executeQuery(sql_pendaftar);
				while(rs_pendaftar.next())
				{ 
					String Id = rs_pendaftar.getString("id");
					String Status = rs_pendaftar.getString("status");
					out.println("<option value=\"" +Status+"\">"+Status+"</option>"); 
			 	}	
				
			%>
        </option>
      </select></td>
    </tr>
    <tr>
      <td><span class="style4">Keterangan</span></td>
      <td><input name="ket" type="text" id="ket" size="25" /></td>
    </tr>
    <tr>
      <td><div align="right">
        <input name="button" type="submit" class="style1" id="button" onclick="MM_validateForm('id_kepsek','','R','nip','','R','nama_kepsek','','R');return document.MM_returnValue" value="Tambah" />
      </div></td>
      <td><input name="button2" type="button" class="style1" id="button2" value="Batal" onclick="window.history.back()"/></td>
    </tr>
  </table>
</form>
</body>
</html>
