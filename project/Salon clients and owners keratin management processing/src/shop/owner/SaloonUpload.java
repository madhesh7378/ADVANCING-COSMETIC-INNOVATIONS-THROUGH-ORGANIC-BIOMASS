package shop.owner;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.Dbconn;

@WebServlet("/SaloonUpload")
public class SaloonUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			HttpSession session=request.getSession();
			String mail=(String) session.getAttribute("ownerMail");
			PrintWriter out=response.getWriter();
			Connection conn = Dbconn.getconnection();
			String path="D:/project/project/Salon clients and owners keratin management processing";
    		String newPath=path+"//WebContent//dataset//OwnerDataset.csv";
    		
    		String qry =  "LOAD DATA INFILE '"+newPath+"'" +
        	        "INTO TABLE hair_dataset FIELDS TERMINATED BY ','" +
        	        "OPTIONALLY ENCLOSED by '\"'" +"IGNORE 1 LINES "+"set id=?";
			PreparedStatement st= conn.prepareStatement(qry);
			st.setString(1, mail);
			int i = st.executeUpdate();
			 
			if(i>0) {
				out.print("<head><script>alert('Saloon DataSet - uploaded successfully');</script></head>");
				RequestDispatcher dd=request.getRequestDispatcher("saloonhome.jsp");
				dd.include(request, response);
			}
			else {
				out.print("<head><script>alert('Saloon DataSet - upload unsuccessful');</script></head>");
				RequestDispatcher dd=request.getRequestDispatcher("saloonupload.jsp");
				dd.include(request, response);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
