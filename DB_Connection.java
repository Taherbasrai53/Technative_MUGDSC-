package Connection;

import Utils.System_Constants;
import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection
{
    static Connection con = null; 
  
  public static Connection myConnection()
  {
    try
    {
       Class.forName(System_Constants.DRIVER);
       con = DriverManager.getConnection(System_Constants.URL,System_Constants.DBUSERNAME,System_Constants.DBPASSWORD); 
    }
    catch(Exception ex)
    {
       System.out.println("Connection Exception : "+ex.toString());
    }
      return con;
   }

    
}
