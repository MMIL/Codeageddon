package Action;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static Connection con=null;
	public static Connection getConnection()
	{
		if(con==null)
		{
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","Employee","emp");
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
		}
	return(con);
	}

}
