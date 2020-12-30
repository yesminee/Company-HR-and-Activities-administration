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
import entity.Direction;



@WebServlet("/DirectionList")
public class DirectionList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DirectionList() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		ResultSet rs=null;
		List<Direction> tab=new ArrayList<Direction>();
		
		
		try {
			con=DataBase.conn();
			PreparedStatement stmt=con.prepareStatement("select * from direction");
			
			rs=stmt.executeQuery();
			
			while(rs.next()) {
				Direction d=new Direction();
				d.setNom(rs.getString("Nom_direction"));
				d.setCode(rs.getInt("Code_direction"));
				d.setEmail(rs.getString("Email"));
				tab.add(d);
			}
						
				request.setAttribute("tab", tab);
				
				request.getRequestDispatcher("./AfficheDirections.jsp").forward(request, response);	
		}catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
