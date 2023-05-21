package ppractiseJDBC;
import java.sql.*;
public class ProductSample {
String check = "\"";
	
	static final String DB_URL = "jdbc:postgresql://localhost/postgres?escapeSyntaxCallMode=call";
	   static final String USER = "postgres";
	   static final String PASS = "Vishi@2001";
	   static final String QUERY = "SELECT \"ProductId\", \"ProductDesc\", \"Price\" FROM \"SampleSchema\".\"Product\";";

	   public static void main(String[] args) {
	      // Open a connection
		   Connection conn = null;
	      try {
	    	  		conn = DriverManager.getConnection(DB_URL, USER, PASS);
		         Statement stmt = conn.createStatement();
		         ResultSet rs = stmt.executeQuery(QUERY);
	         // Extract data from result set
	         while (rs.next()) {
	            // Retrieve by column name
	            System.out.println("ID: " + rs.getInt("productid"));
	            System.out.println("Desc: " + rs.getString("productdesc"));
	            System.out.println("price: " + rs.getInt("price"));
	         }
	         
	         
	       /*CallableStatement outsampleproc = conn.prepareCall("{ CALL \"SampleSchema\".prodoutdemo(?) }");
	         outsampleproc.registerOutParameter(1, Types.VARCHAR);
	         outsampleproc.execute();
	         String name = outsampleproc.getString(1);
	         System.out.println(name);
	         outsampleproc.close();*/

	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	    	  if(conn != null) {
	    		  
	    		  try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    	  }
	      }
	   }
}
