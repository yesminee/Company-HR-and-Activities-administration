package manipulation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DataBase;
import entity.AdminDirecteur;
import entity.ResponsableDirection;



@WebServlet("/UtilisateurList")
public class UtilisateurList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UtilisateurList() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con;
		ResultSet rs=null;
		List<ResponsableDirection> tab1=new ArrayList<ResponsableDirection>();
		List<AdminDirecteur> tab2=new ArrayList<AdminDirecteur>();
		List<AdminDirecteur> tab3=new ArrayList<AdminDirecteur>();
		
		try {
			con=DataBase.conn();
			PreparedStatement stmt=con.prepareStatement("select * from responsable_direction");
			
			rs=stmt.executeQuery();
			
			//La list des Responsable de direction
			while(rs.next()) {
				ResponsableDirection rd=new ResponsableDirection();
				rd.setLogin(rs.getString("Login"));
				rd.setCode(rs.getInt("Code_utilisateur"));
				rd.setPassword(rs.getString("Password"));
				rd.setCodeDirection(rs.getInt("Code_direction"));
				tab1.add(rd);
			}
			
			

			stmt=con.prepareStatement("select * from admin_direct");
			rs=stmt.executeQuery();
			
			
			// List adminstrateurs et des directeurs
			while(rs.next()) {
				AdminDirecteur ad=new AdminDirecteur();
				ad.setLogin(rs.getString("Login"));
				ad.setCode(rs.getInt("Code_utilisateur"));
				ad.setPassword(rs.getString("Password"));
				ad.setType(rs.getString("type"));
				
				//Tab2 representer les adminstrateur
				if(ad.getType().equals("adminstrateur")) {
					tab2.add(ad);
				}else {
					//tab3 representer les responsable
					tab3.add(ad);
				}
				
			}
			
			//Met les parametre dans la requet pour qu'on puisse acceder dans la page jsp
			request.setAttribute("tab1", tab1);
			request.setAttribute("tab2", tab2);
			request.setAttribute("tab3", tab3);
			
			request.getRequestDispatcher("./AfficheUtilisateurs.jsp").forward(request, response);

		}catch(Exception e) {
			System.out.println(e);
		}
		

	}


}
