package User_DAO;

import Connection.DB_Connection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;

public class Order_DAO 
{
    Connection con ;
    public Order_DAO() 
    {
        con = DB_Connection.myConnection();
    }
    public int insert_order(String gtype,int usid,String time,String quantity)
    {
        int result = 0;
        if(con!=null)
        {
            try
            {
                String in_order = "insert into book(type,usid,time,quantity) value(?,?,?,?)";
                PreparedStatement ps1 = con.prepareStatement(in_order);
              
                ps1.setString(1, gtype);
                ps1.setInt(2, usid);
                ps1.setString(3, time);
                ps1.setString(4, quantity);
                
                result = ps1.executeUpdate();
            }
            catch(Exception ex)
            {
                System.out.println("SignUp Exception...");
            }
        }
        return result;
    }
}

