package manipulation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DataBase;
import entity.Partenaire;
import entity.ResponsableDirection;
import entity.Theme;

@WebServlet("/AjouterActP1")
public class AjouterActP1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjouterActP1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
		List<Theme> tabT=new ArrayList<Theme>();
		List<Partenaire> tabP=new ArrayList<Partenaire>();
		
		Connection c;
		ResultSet rs=null;
		
		try {
			c=DataBase.conn();
			
			PreparedStatement stmt=c.prepareStatement("select * from theme");
			
			rs=stmt.executeQuery();
			
			while(rs.next()) {
				Theme t=new Theme();
				
				t.setCode(rs.getInt("Code_theme"));
				t.setNom(rs.getString("Nom_theme"));
				
				tabT.add(t);
				
			}
			
			
			stmt=c.prepareStatement("select * from partenaire");
			rs=stmt.executeQuery();
			
			
			while(rs.next()) {
				Partenaire p=new Partenaire();
				
				p.setCode(rs.getInt("Code_partenaire"));
				p.setNom(rs.getString("Nom_partenaire"));
				p.setEmail(rs.getString("Email"));
				
				tabP.add(p);
			}
			
			request.setAttribute("theme", tabT);
			request.setAttribute("partenaire", tabP);
			
			
			request.getRequestDispatcher("./AjouterActiviteP2.jsp").forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}



}
