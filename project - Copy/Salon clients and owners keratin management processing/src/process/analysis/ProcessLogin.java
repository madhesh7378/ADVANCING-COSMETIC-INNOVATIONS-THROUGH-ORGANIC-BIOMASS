package process.analysis;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.Dbconn;

@WebServlet("/ProcessLogin")
public class ProcessLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String d=request.getParameter("empname");
		String a = request.getParameter("Email");
		String b = request.getParameter("Password");
		String c = "Accepted";
		PrintWriter out = response.getWriter();  
		
		HttpSession session=request.getSession();
		session.setAttribute("mail", a);
		try {
			
			Connection conn = Dbconn.getconnection();
			String qry = "select * from process_analysis where empmail='"+a+"'and password='"+b+"' and empstatus='"+c+"'";
			PreparedStatement ps = conn.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())  {
				//HttpSession session = request.getSession();
				//String a1 = rs.getString(1);
				//session.setAttribute("id",a1);
				out.print("<head><script>alert('Process Analysis - Login Successful');</script></head>");
				RequestDispatcher dd=request.getRequestDispatcher("processanalysishome.jsp");
				dd.include(request, response);
			}else {
				out.print("<head><script>alert('Process Analysis - Login unsuccessful');</script></head>");
				RequestDispatcher dd=request.getRequestDispatcher("index.html");
				dd.include(request, response);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

	}

}
