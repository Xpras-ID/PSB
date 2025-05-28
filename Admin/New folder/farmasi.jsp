<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>::Data TPMI::</title>
<link rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-family: "Bradley Hand ITC"}
.style4 {font-size: 14px}
.style5 {font-size: 16px}
.style6 {
	font-family: "Times New Roman";
	font-size: 13px;
	font-weight: bold;
	color: #0000FF;
}
.style7 {
	color: #FFFFFF;
	font-family: "Times New Roman";
	font-size: 14px;
}
.style8 {font-family: "Bradley Hand ITC"; font-size: 13px; font-weight: bold; color: #FFFFFF; }
.style9 {font-family: "Times New Roman"}
-->
</style>
<link href="development-bundle/css/tabs-1.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style10 {
	font-family: "Times New Roman";
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}
.style13 {font-size: 12px}
.style15 {
	font-size: 12px;
	color: #FFFFFF;
	font-weight: bold;
}
.style18 {font-weight: bold; font-size: 12px; }
-->
</style>
</head>

<body background="../images/back2.png">
<form method="post" name="form1" id="form1">

<p align="left" class="style1 style4"><strong><blink></blink></strong><a href="farTHN.jsp" target="mainFrame">
  <input name="button" type="button" class="style6" id="button" value="Kembali"/>
</a></p>
<p align="center" class="style1 style5"><span class="style9"><strong>KESEHATAN / FARMASI </strong><blink>
  </blink></span><a href="InputData.jsp"><blink></blink></a></p>
<a href="InputData.jsp"><blink><div align="left"></div>
</blink></a></p>
<table width="401" border="0" align="right" cellpadding="0" cellspacing="0">
    <tr>
      <td width="120"><strong><span class="style9">Cari Nama </span></strong></td>
      <td width="240"><strong>
        <input name="cari" type="text" id="cari" size="40"/>
      </strong></td>
      <td width="41"><strong>
        <input name="submit" type="submit" id="submit" style="font:'Times New Roman'; font-weight: bold;" value="Cari" />
      </strong></td>
    </tr>
  </table>
<table width="1344" border="0" align="center" cellpadding="0" cellspacing="1">
  
  <tr>
    <td width="77" border="1" bgcolor="#333333"><div align="center"><span class="style15">Rank</span></div></td>
    <td width="137" height="25" border="1" bgcolor="#333333"><div align="center" class="style6 style7">
      <div align="center" class="style13">No Pendaftaran </div>
    </div></td>
    <td width="235" bordercolor="#FFFFFF" bgcolor="#333333"><div align="center" class="style10">
      <div align="center" class="style13">Nama Calon Siswa </div>
    </div></td>
    <td width="152" bordercolor="#FFFFFF" bgcolor="#333333"><div align="center" class="style8 style9 style4">Jenis Kelamin</div></td>
    <td width="122" bordercolor="#FFFFFF" bgcolor="#333333"><div align="center" class="style8 style9 style4">Rata-Rata Nilai UAN</div></td>
    
    <td width="302" bordercolor="#FFFFFF" bgcolor="#333333"><div align="center" class="style8 style9 style4">Jurusan</div></td>
    <td width="102" bordercolor="#FFFFFF" bgcolor="#333333"><div align="center" class="style8 style9 style4">Tahun Ajaran</div></td>
    <td width="207" bordercolor="#FFFFFF" bgcolor="#333333"><div align="center"><span class="style15">Keterangan</span></div></td>
  </tr>
   <%	String cari = request.getParameter("cari");
		Class.forName(url); 
		Connection connection = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement =connection.createStatement(); 
		String sql = "select * from View_Far_Diterima where no_pendaftaran='"+cari+"' OR nama_pendaftar like '%"+cari+"%' OR tahun_ajaran_id like '%"+cari+"%'";
		if (cari == null)		
		sql = " select * from View_Far_Diterima where tahun_ajaran_id like '%"+cari+"%'";
		ResultSet rs=statement.executeQuery(sql);		
		while (rs.next())
		{   String Rank=rs.getString("Rank");
			String no_pendaftaran=rs.getString("no_pendaftaran");	
			String nama_pendaftar=rs.getString("nama_pendaftar");
			String jenis_kelamin_id=rs.getString("jenis_kelamin_id");
			String rata_nilai=rs.getString("rata_nilai");
			String jurusan_id=rs.getString("jurusan_id");
			String tahun_ajaran_id=rs.getString("tahun_ajaran_id");
			String status=rs.getString("status");
			%>
  <tr>
    <td bgcolor="#CCCCCC"><div align="center" class="style13">
      <% out.print(Rank);%>
    </div></td>
     <td bgcolor="#CCCCCC"><div align="center" class="style13">
       <% out.print(no_pendaftaran);%>
     </div></td>
    <td bgcolor="#CCCCCC"><span class="style13">
      <% out.print(nama_pendaftar);%>
    </span></td>
    <td bgcolor="#CCCCCC">
      <div align="center" class="style13">
        <% out.print(jenis_kelamin_id);%>
      </div></td><td bgcolor="#CCCCCC"><div align="center" class="style13">
        <% out.print(rata_nilai);%>
      </div></td>
    <td bgcolor="#CCCCCC"><div align="center" class="style13">
      <% out.print(jurusan_id);%>
    </div></td>
    <td bgcolor="#CCCCCC"><div align="center" class="style13"><% out.print(tahun_ajaran_id);%></div></td>
    <td bgcolor="#CCCCCC"><div align="center" class="style13">
      <% out.print(status);%>
    </div></td>
  </tr>
 <%
	}	
%>
</table>
<table width="1344" border="0" align="center" cellpadding="0" cellspacing="1">
  
   <%	
		Class.forName(url); 
		Connection connection2 = DriverManager.getConnection(koneksi,username,pass);		
		Statement statement2 =connection2.createStatement(); 
		String sql2 = "select * from View_Far_TdkDiterima where no_pendaftaran='"+cari+"' OR nama_pendaftar like '%"+cari+"%' OR tahun_ajaran_id like '%"+cari+"%'";
		if (cari == null)		
		sql2 = " select * from View_Far_TdkDiterima where tahun_ajaran_id like '%"+cari+"%'";
		ResultSet rs2=statement2.executeQuery(sql2);		
		while (rs2.next())
		{   
			String Rank=rs2.getString("Rank");
			String no_pendaftaran=rs2.getString("no_pendaftaran");	
			String nama_pendaftar=rs2.getString("nama_pendaftar");
			String jenis_kelamin_id=rs2.getString("jenis_kelamin_id");
			String rata_nilai=rs2.getString("rata_nilai");
			String jurusan_id=rs2.getString("jurusan_id");
			String tahun_ajaran_id=rs2.getString("tahun_ajaran_id");
			String status=rs2.getString("status");
			%>
  <tr>    
	<td width="77" bgcolor="#CCCCCC"><div align="center" class="style13"><% out.print(Rank);%></div></td> 
     <td width="137" bgcolor="#CCCCCC"><div align="center" class="style13">
       <% out.print(no_pendaftaran);%>
     </div></td>
    <td width="235" bgcolor="#CCCCCC"><span class="style13">
       <% out.print(nama_pendaftar);%>
    </span></td>
    <td width="152" bgcolor="#CCCCCC">
      <div align="center" class="style13">
        <% out.print(jenis_kelamin_id);%>
      </div></td><td width="122" bgcolor="#CCCCCC"><div align="center" class="style13">
        <% out.print(rata_nilai);%>
      </div></td>
    <td width="302" bgcolor="#CCCCCC"><div align="center" class="style13">
      <% out.print(jurusan_id);%>
    </div></td>
    <td width="102" bgcolor="#CCCCCC"><div align="center" class="style13"><% out.print(tahun_ajaran_id);%></div></td>
    <td width="208" bgcolor="#CCCCCC"><div align="center" class="style13">
      <% out.print(status);%>
    </div></td>
  </tr>
 <%
	}	
%>
</table>
</form>
</body>
</html>
