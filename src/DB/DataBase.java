package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DataBase {
	
	
	//Methode qui permet la connection avec la BD
	
	
	public static Connection conn() throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String user="root";
		String password="";
		String url="jdbc:mysql://localhost:3306/jee?serverTimezone=UTC";
		
		
	
		Connection c=null;
		
		try {
			//Chargement du pilote faisant le lien entre application java et SGBD mysql
				
			c=DriverManager.getConnection(url,user,password);
				
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return c;
	}

	//Test SI la connexion fonctionne
	public static void main(String[] args) throws ClassNotFoundException {
		// TODO Auto-generated method stub
		
		if(conn()!=null) {
			System.out.println("Connexion etablie");
		}else {
			System.out.println("Connexion non0 etablie");
		}
	}

}
