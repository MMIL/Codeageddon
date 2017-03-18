package Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class LogIn implements SessionAware{
	private SessionMap<String,Object> map;
	private String email,password;
	
	public void setSession(Map<String,Object> map)
	{
		this.map=(SessionMap<String,Object>)map;
	}
	
	public String execute()
	{
		
		
		boolean b=logIn();
		if(b)
		{
			System.out.println("hi");
			return "login";
		}
		else
			return "error";
	}
	public String logout(){ 
		System.out.println("logout1");
	    if(map!=null){ 
	    	System.out.println("logout");
	        map.invalidate();  
	    }  
	    return "success";  
	}  
	
	public boolean logIn()
	{
		try
		{
			Connection con=DBConnection.getConnection();
			PreparedStatement s=con.prepareStatement("Select emailid,leves from CodeAgeddon where emailid=? and password=?");
			
			
			s.setString(1,email);
			s.setString(2,password);
			
			ResultSet rs=s.executeQuery();
			
			if(rs.next())
			{
				
				int level=rs.getInt(2);
				
				map.put("login","true");
				map.put("email",email);
				map.put("level",level);
				return true;
			}
			else
				return false;
			
		}
		catch(SQLException e)
		{
			
				return false;
		
		}
		
	}
	 public String getEmail() {
		 
	      return email;
	   }

	   public void setEmail(String email) {
		   
	      this.email= email;


	   }
	   public String getPassword() {
		  
		      return password;
		   }

		   public void setPassword(String password) {
			
		      this.password= password;


		   }
		   
	   


}
