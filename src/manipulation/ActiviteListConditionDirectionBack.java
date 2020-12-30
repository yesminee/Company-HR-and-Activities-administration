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
import entity.Activite;

@WebServlet("/ActiviteListConditionDirectionBack")
public class ActiviteListConditionDirectionBack extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ActiviteListConditionDirectionBack() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] dir=request.getParameterValues("direction");
		
		if(dir!=null) {
			
			try {
				Connection c=DataBase.conn();
				String sql="select * from activite where Annee=? and (";
				String ch="";
				
				for(int i=0;i<dir.length;i++) {
					if(i==dir.length-1) {
						ch=ch+" Direction=?";
					}else {
						ch=" Direction=? or"+ch;
					}
					
				}
				sql=sql+ch+" )";
				PreparedStatement stmt=c.prepareStatement(sql);
				
				stmt.setInt(1, 2020);
				
				for(int i=0;i<dir.length;i++) {
					System.out.println(dir[i]);
					stmt.setInt(i+2,Integer.parseInt(dir[i]));
				}
				
				System.out.println(sql);
				
				ResultSet rs=stmt.executeQuery();
				
				System.out.println(rs);
				List<Activite> tab=new ArrayList<Activite>();
				
				while(rs.next()) {
					Activite a=new Activite();
					a.setCode(rs.getInt("Code_activite"));
					a.setDirection(rs.getInt("Direction"));
					a.setAnnee(rs.getInt("Annee"));
					a.setTheme(rs.getInt("Theme"));
					a.setIntitule(rs.getString("Intitule"));
					a.setIndicateur(rs.getString("Indicateur"));
					a.setSI(rs.getString("Source_information"));
					a.setPeriode(rs.getString("Periode"));
					a.setPartenaire(rs.getInt("Partenaire"));
					a.setSF(rs.getString("Source_financiere"));
					a.setEtat(rs.getString("Etat"));
					tab.add(a);
				}
				
				request.setAttribute("infos", tab);
				
				request.getRequestDispatcher("./ActiviteListCond.jsp").forward(request, response);
				
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}else {
			Connection c;
			try {
				c = DataBase.conn();
				String sql="select * from activite where Annee=?";
				PreparedStatement stmt=c.prepareStatement(sql);
				stmt.setInt(1, 2020);
				
				ResultSet rs=stmt.executeQuery();
				
				List<Activite> tab=new ArrayList<Activite>();
				
				while(rs.next()) {
					Activite a=new Activite();
					a.setCode(rs.getInt("Code_activite"));
					a.setDirection(rs.getInt("Direction"));
					a.setAnnee(rs.getInt("Annee"));
					a.setTheme(rs.getInt("Theme"));
					a.setIntitule(rs.getString("Intitule"));
					a.setIndicateur(rs.getString("Indicateur"));
					a.setSI(rs.getString("Source_information"));
					a.setPeriode(rs.getString("Periode"));
					a.setPartenaire(rs.getInt("Partenaire"));
					a.setSF(rs.getString("Source_financiere"));
					a.setEtat(rs.getString("Etat"));
					tab.add(a);
				}
				
				request.setAttribute("infos", tab);
				
				request.getRequestDispatcher("./ActiviteListCond.jsp").forward(request, response);
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
