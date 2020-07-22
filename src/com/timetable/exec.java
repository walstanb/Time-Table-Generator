package com.timetable;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class exec
 */
@WebServlet(description = "Calls engine", urlPatterns = { "/Generate" })
public class exec extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		try {
			if(engine.eng(req.getParameter("term")))
			{
				req.setAttribute("results", "1");
				RequestDispatcher rd=req.getRequestDispatcher("afterlogin.jsp");
				rd.forward(req, res);
			}
			else
			{ 
				throw new Exception();
			}
		}
		catch(Exception e) 
		{}
		}
	}
