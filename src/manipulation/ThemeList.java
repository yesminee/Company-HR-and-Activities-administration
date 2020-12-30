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
import entity.Theme;


@WebServlet("/ThemeList")
public class ThemeList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ThemeList() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con;
		ResultSet rs=null;
		List<Theme> tab=new ArrayList<Theme>();
		
		
		try {
			con=DataBase.conn();
			PreparedStatement stmt=con.prepareStatement("select * from theme");
			
			rs=stmt.executeQuery();
			
			while(rs.next()) {
				Theme t=new Theme();
				
				t.setCode(rs.getInt("Code_Theme"));
				t.setNom(rs.getString("Nom_Theme"));
				
				tab.add(t);
			}
			
			request.setAttribute("tab", tab);
			
			request.getRequestDispatcher("./AfficheThemes.jsp").forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}


}
