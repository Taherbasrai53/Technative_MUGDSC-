package User_DAO;

import Connection.DB_Connection;
import User_DTO.uDTO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class uDAO {
 Connection con ;

    public uDAO()
    {
        con = DB_Connection.myConnection();
    }
   
      public int SignUp(String uname,String uphone,String password,String uadd,String upincode)
      {
           int result = 0;
        if(con!=null)
        {
            try
            {
                String signup = "insert into user(uname,uphone,password,uaddress,upincode) value(?,?,?,?,?)";
                PreparedStatement ps1 = con.prepareStatement(signup);
              
                ps1.setString(1, uname);
                ps1.setString(2, uphone);
                ps1.setString(3, password);
                ps1.setString(4, uadd);
                ps1.setString(5, upincode);
                
                result = ps1.executeUpdate();
            }
            catch(Exception ex)
            {
                System.out.println("SignUp Exception...");
            }
           
        }
         else
         {
             System.out.println("SignUP Connection Failed...");
         }
        return result;
      }
      public uDTO Login(String uphone,String pass)
      {
           uDTO u = null;
            if (con!=null)
            {
                try
                {
                    String sql = "select * from user where uphone = ? & password = ?";
                    PreparedStatement ps = con.prepareStatement(sql);
        
                    ps.setString(1, uphone);
                    ps.setString(2, pass);
        
                    ResultSet res = ps.executeQuery();
                    if(res.next())
                    {
               
                        int uid = res.getInt("uid");
                        String uname = res.getString("uname");
                        String umobile = res.getString("uphone");
                        String password = res.getString("password");
                        String uaddress = res.getString("uaddress");
                        String upin = res.getString("upincode");
               
               
                        u = new uDTO(uid, uname, password, umobile, uaddress, upin);
                    }
                }
                catch(Exception ex)
                {
                    System.out.println("login exception: "+ex.toString());
                }
            }
            else
            {
                System.out.println("Login Connection problem");
            }
            return u;
      }
}
