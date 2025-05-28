<%@ page import="java.sql.Connection, 
                 java.sql.DriverManager,
                 java.sql.Statement,
                 java.sql.ResultSet" %> 

<%@ include file="definisi.jsp" %>

<%!
   public boolean otentikasi(String pemakai, 
                             String password)
   {
      if (pemakai == null || password == null) 
         return(false);

      if (pemakai.equals("") || password.equals("")) 
         return(false);
         
      boolean ada_kesalahan = false;
      boolean password_cocok = false;

      try { 
         Class.forName("com.mysql.jdbc.Driver"); 
      } 
      catch (Exception ex) { 
         ada_kesalahan = true;      
      }

      if (!ada_kesalahan) {
         // Bentuk koneksi
         Connection koneksi = null;
         try {
            koneksi = DriverManager.getConnection(
                      NAMA_DB,
                      NAMA_USER, PASSWORD);
         }
         catch (Exception ex) {
            ada_kesalahan = true;
         }

         if (!ada_kesalahan) {
            ResultSet hasilQuery = null;
            try {
               Statement stm = koneksi.createStatement();
               hasilQuery = stm.executeQuery(
                  "SELECT password FROM login " +
                  "WHERE nama = '" + pemakai + "'");
            }
            catch (Exception ex) {
               ada_kesalahan = true;
            }

            if (!ada_kesalahan) {
               String data_password = "";

               try {
                  if (hasilQuery.next())
                     data_password = 
                        hasilQuery.getString("password");
               }
               catch (Exception ex) {
                  ada_kesalahan = true;
               }

               if (!ada_kesalahan) 
                  if (password.equals(data_password)) 
                     password_cocok = true;
            }
         }
      }

      return(password_cocok);
   }
%>
