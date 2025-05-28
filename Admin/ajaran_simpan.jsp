<%@ page  import="java.sql.*" %>
<%@ include file="segarkan.jsp" %>
<%@ include file="conn.jsp" %>
<%@ include file="validasi.jsp" %>
<%  String tahun_ajaran_id = request.getParameter("tahun_ajaran_id");
	String  tahun = request.getParameter("tahun");
	String kuota = request.getParameter("kuota");
	
	String sql="insert into tahun_ajaran(tahun_ajaran_id,tahun,kuota) Values('"+tahun_ajaran_id+"','"+tahun+"','"+kuota+"')";
	try
	{
		Class.forName(url);
		Connection connection = DriverManager.getConnection(koneksi,username,pass);
		Statement statement =connection.createStatement(); 
		statement.executeUpdate(sql); 
		statement.close();
		connection.close();  
		response.sendRedirect("ajaran.jsp");
		
	} 
	catch (Exception e)
	{ 	String pesan = e.getMessage();
		response.sendRedirect("gagalSimpan.jsp?pesannya="+pesan);
	}	
%>

