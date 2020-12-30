package manipulation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ActiviteList")
public class ActiviteList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ActiviteList() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String param1=request.getParameter("direction");
		String param2=request.getParameter("theme");
		String param3=request.getParameter("etat");
		String ch;
		String sql;
		
		
		if(param1.equals("") && param2.equals("") && param3.equals("")) {
			
		}
		
		
		if(!param1.equals("")) {
			
		}
		
		if(!param2.equals("")) {
			
		}
		
		if(!param3.equals("")) {
			
		}
	}

}
