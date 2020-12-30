package manipulation;

import java.io.IOException;
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

import DB.DataBase;
import entity.Partenaire;

@WebServlet("/PartenaireList")
public class PartenaireList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PartenaireList() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con;
		ResultSet rs=null;
		List<Partenaire> tab=new ArrayList<Partenaire>();
		
		
		
		try {
			con=DataBase.conn();
			PreparedStatement stmt=con.prepareStatement("select * from partenaire");
			
			rs=stmt.executeQuery();
			
			while(rs.next()) {
				Partenaire p=new Partenaire();
				
				p.setCode(rs.getInt("Code_partenaire"));
				p.setNom(rs.getString("Nom_partenaire"));
				p.setEmail(rs.getString("Email"));
				
				tab.add(p);
				
			}
			
			request.setAttribute("tab", tab);
			
			request.getRequestDispatcher("./AffichePartenaires.jsp").forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
}
