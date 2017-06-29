package controller;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import getData.GetConnection;

/**
 * Servlet implementation class AddDetail
 */
@WebServlet("/AddDetail")
public class AddDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String fname = request.getParameter("name");
		String dob = request.getParameter("dob");
		String college = request.getParameter("college");
		String branch = request.getParameter("branch");
		String year = request.getParameter("year");
		String furl= request.getParameter("furl");
		String lurl = request.getParameter("lurl");
		String quote = request.getParameter("quote");
		Connection cn = GetConnection.getCn();
		
		try{
			HttpSession s = request.getSession();
			String currentUser = (String)s.getAttribute("email");
			 out.println(currentUser);
			String sql = "insert into dashboard('fname','dob','college','branch','year','furl','lurl','quote') values(?,?,?,?,?,?,?,?) where useremail=?;";
			
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, dob);
			ps.setString(3, college);
			ps.setString(4, branch);
			ps.setString(5, year);
			ps.setString(6, furl);
			ps.setString(7, lurl);
			ps.setString(8, quote);
			ps.setString(9, currentUser);
			
		   int updateQuery = ps.executeUpdate();
             if (updateQuery != 0) { 
            	 out.println(currentUser);
		}
             else{
            	 out.println(" not inserted");
             }
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
