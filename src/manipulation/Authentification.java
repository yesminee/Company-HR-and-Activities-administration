package manipulation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DataBase;
import entity.AdminDirecteur;
import entity.ResponsableDirection;

@WebServlet("/Authentification")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Authentification() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con;
		ResultSet rs=null;
		
		
		String param1=request.getParameter("login");
		String param2=request.getParameter("password");
		
		//Pour faire la cretion d'une session
		HttpSession session=request.getSession();
		
		try {
			con=DataBase.conn();
			
			//Je verifie si l'utlisateur est le responsable de la direction
			PreparedStatement stmt=con.prepareStatement("select * from responsable_direction where Login= ? and Password=?");
			
			//Remplace les ? par les variable param1 et param2
			stmt.setString(1, param1);
			stmt.setString(2, param2);
			
			rs=stmt.executeQuery();
			
			if(rs.next()) {
				System.out.println("Un compte exist");
				ResponsableDirection rd=new ResponsableDirection();
				
				rd.setCode(rs.getInt("Code_utilisateur"));
				rd.setLogin(rs.getString("Login"));
				rd.setPassword(rs.getString("Password"));
				rd.setCodeDirection(rs.getInt("Code_direction"));
				
				
				session.setAttribute("utilisateur", rd);
				
				request.getRequestDispatcher("./DasResponsableDirection.jsp").forward(request, response);
				
			}else {
				//Je verifie si l'utlisateur est le directeur ou l'adminstrateur
				stmt=con.prepareStatement("select * from admin_direct where Login= ? and Password=?");
				
				stmt.setString(1, param1);
				stmt.setString(2, param2);
				
				rs=stmt.executeQuery();
				if(rs.next()) {
					AdminDirecteur ad=new AdminDirecteur();
					ad.setCode(rs.getInt("Code_utilisateur"));
					ad.setLogin(rs.getString("Login"));
					ad.setPassword(rs.getString("password"));
					ad.setType(rs.getString("type"));
					session.setAttribute("utilisateur", ad);
					
					if(ad.getType().equals("adminstrateur")) {
						
						request.getRequestDispatcher("./DasAdminstrateur.jsp").forward(request, response);
						
					}else  {
						
						request.getRequestDispatcher("./DasDirecteur.jsp").forward(request, response);
						
					}
				}else {
					//Compte inexistant
					String b="Password ou Login incorrect";
					request.setAttribute("b", b);
					request.getRequestDispatcher("./authentification.jsp").include(request, response);
				}
		
			}
				
			
			
			
		}catch(Exception e) {
			System.out.println("error");
		}
		
		
	}

}
