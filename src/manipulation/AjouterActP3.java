package manipulation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DataBase;
import entity.ResponsableDirection;

@WebServlet("/AjouterActP3")
public class AjouterActP3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterActP3() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection c;
		
		
		HttpSession session =request.getSession();
		ResponsableDirection rd=(ResponsableDirection) session.getAttribute("utilisateur");
		
		int codeD=rd.getCodeDirection();
		int annee=Integer.parseInt(request.getParameter("annee"));
		
		int theme=Integer.parseInt(request.getParameter("theme"));
		String intitule=request.getParameter("intitule");
		
		String indicateur=request.getParameter("indicateur");
		String si=request.getParameter("information");
		int codeP =Integer.parseInt(request.getParameter("partenaire"));
		
		String sf=request.getParameter("financiere");
		
		String etat=request.getParameter("etat");
		
		String[] periode=request.getParameterValues("periode");
		
		int i;
		String ch="";
		for(i=0;i<periode.length;i++) {
			ch=periode[i]+ch;
		}
		
		/*	PrintWriter out=response.getWriter();
		
		out.println(codeD);
		out.println(annee);
		out.println(theme);
		out.println(intitule);
		out.println(indicateur);
		out.println(si);
		out.println(sf);
		out.println(etat);
		
		int i; */
		
		
		try {
			c=DataBase.conn();
			PreparedStatement stmt=c.prepareStatement("INSERT INTO `activite`(`Direction`, `Annee`, `Theme`, `Intitule`, `Indicateur`, `Source_information`, `Periode`, `Partenaire`, `Source_financiere`, `Etat`) VALUES (?,?,?,?,?,?,?,?,?,?)");
			
			stmt.setInt(1, codeD);
			stmt.setInt(2,annee);
			stmt.setInt(3, theme);
			stmt.setString(4, intitule);
			stmt.setString(5, indicateur);
			stmt.setString(6, si);
			stmt.setString(7, ch);
			stmt.setInt(8, codeP);
			stmt.setString(9, sf);
			stmt.setString(10,etat);
			
			stmt.executeUpdate();
			
			request.getRequestDispatcher("./DasResponsableDirection.jsp").forward(request, response);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
