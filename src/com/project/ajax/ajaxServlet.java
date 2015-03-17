package com.project.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ajaxServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8"); 
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			String jiedaoban = request.getParameter("id");
			String responseText ="";
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/eg";
			String user = "root";
			String pass = "root";
			try {
				Class.forName(driver);
				Connection conn = DriverManager.getConnection(url, user, pass);
				Statement stat = conn.createStatement();
				String sql = "select street_name from street where office_id= \""+jiedaoban+"\"";
				ResultSet rs = stat
						.executeQuery(sql);
				responseText+="<option value='all'>"+"Ыљга"+"</option>";
						
				while(rs.next()){
					String list = "<option value='"+rs.getString("street_name")+"'>"+rs.getString("street_name")+"</option>";
					responseText = responseText+list;
				}

			} catch (Exception e) {
				System.out.println(e);
			}
			
			PrintWriter out = response.getWriter();
			HttpSession seesion = request.getSession();
			out.println(responseText);
			out.close();
		} catch (IOException e) {
			System.out.println(e);
		}
	}
}
