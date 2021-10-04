package appsdeveloperblog.encryption;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/protectedpassword2")
public class protectpassword2 extends HttpServlet {
    static String myPassword;
        
	public static String main(String[] args)
	    {
	        String secure;
	        secure=passwordfun(myPassword);
	        // Generate Salt. The generated value can be stored in DB. 
	         return secure;
	    }
	   public static String salt;
		public static String passwordfun(String mypassword) {
			myPassword=mypassword;
			// TODO Auto-generated method stub
			salt = PasswordUtils.getSalt(30);
		    String mySecurePassword = PasswordUtils.generateSecurePassword(myPassword, salt);
		    return mySecurePassword;
		 
		}
		public static String funforreturn()
		{
			return salt;
		}
		

}

