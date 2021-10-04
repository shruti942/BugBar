package appsdeveloperblog.encryption;

public class verifypassword {
   


public static int verify(String pwd,String db,String salt2)
{
     // User provided password to validate
     String providedPassword = pwd;
             String dbpassword=db;
     // Encrypted and Base64 encoded password read from database
     String salt = salt2;
int flag=0;
     boolean passwordMatch = PasswordUtils.verifyUserPassword(providedPassword, dbpassword, salt);
        if(passwordMatch) 
        {
             flag=1;
        } 
return flag;
	
	}
}
