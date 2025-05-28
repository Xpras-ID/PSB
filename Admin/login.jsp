<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file = "definisi.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-family: "Bradley Hand ITC"}
.style2 {font-weight: bold}
.style3 {font-size: 16px}
.style4 {font-weight: bold}
.style5 {font-family: "Bradley Hand ITC"; font-weight: bold; }
.style6 {
	font-size: 18px;
	font-family: "Times New Roman";
}
-->
</style>
</head>

<body background="../images/back2.png">
<FORM ACTION="vallogin.jsp" METHOD="POST">
  <p>&nbsp;</p>
  <table width="596" border="0" align="center" cellpadding="5" cellspacing="0">
    <tr>
      <td height="38" colspan="4"><div align="center" class="style5 style2 style1">
        <p class="style1 style11 style6">&nbsp;</p>
        <p class="style1 style11 style6"><strong>ANDA HARUS LOGIN</strong> TERLEBIH DAHULU</p>
      </div></td>
    </tr>
    <tr>
      <td colspan="2" class="style3"><div align="center"></div></td>
      <td width="163" class="style3"><div align="left"><span class="style6">(*) Username :</span></div></td>
      <td width="228" height="40" class="style3"><div align="center" class="style4">
        <div align="left">
          <p>
            <% String pemakai = gantiKosong(
            request.getParameter("pemakai"));
      %>
            <input name="pemakai" type="text" id="pemakai" value="<%= pemakai %>" />
          </p>
          </div>
      </div></td>
    </tr>
    <tr>
      <td colspan="2" class="style3"><div align="center"><img src="../images/j_login_lock.png" width="51" height="40" /></div></td>
      <td class="style3"><div align="left" class="style6">(*) Pasword :</div></td>
      <td height="37" class="style3"><div align="center" class="style5">
        <div align="left">
          <p>
            <input type="password" name="sandi" id="label" />
          </p>
          </div>
      </div></td>
    </tr>
    
    <tr>
      <td width="102" class="style3">&nbsp;</td>
      <td width="63" class="style3">&nbsp;</td>
      <td class="style3">&nbsp;</td>
      <td height="26" class="style3">&nbsp;</td>
    </tr>
    <tr>
      <td width="102" class="style3">&nbsp;</td>
      <td><div align="right"></div></td>
      <td><input name="Submit" type="submit" class="style6" id="Submit" value="Login" /></td>
      <td>
        
        <div align="left">
          <input name="Submit22" type="submit" class="style6" id="Submit2" value="Cancel" />
      </div></td></tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4"><div align="center">
        <p class="style5">
          <%
  String msg = request.getParameter("msg");
  if (msg != null)
     out.println(msg + "<BR>\n");
%>
</p>
        <p class="style5">&nbsp;</p>
        <p class="style5">&nbsp;</p>
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</form>
</body>
</html>
