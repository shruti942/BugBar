package connection1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conn {

		public  static Connection connect() {
			Connection con = null;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","******");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		return con;

		}
	}



