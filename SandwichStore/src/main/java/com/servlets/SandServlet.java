package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.SandImpl;

import com.pojo.Sand;


/**
 * Servlet implementation class SandServlet
 */
@WebServlet("/SandServlet")
public class SandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SandServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		SandImpl sandimpl=new SandImpl();
		HttpSession session = request.getSession();
		String sandAction = request.getParameter("act");
		if(sandAction.equalsIgnoreCase("getall")) {
			List<Sand> sandList=sandimpl.getAllSand();
			session.setAttribute("sList",sandList);
			response.sendRedirect("admin/allFoodEditFood.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String userAction=request.getParameter("act");
		
		SandImpl sandimpl=new SandImpl();	
		
		if(userAction.equalsIgnoreCase("addNewFoodAction")) {
			int id=Integer.parseInt(request.getParameter("foodid"));
			String name=request.getParameter("name");	
			String category=request.getParameter("category");
			int price=Integer.parseInt(request.getParameter("price"));
			String active=request.getParameter("active");
						
			Sand sand=new Sand();
			sand.setId(id);
			sand.setName(name);
			sand.setCategory(category);
			sand.setPrice(price);
			sand.setActive(active);
			
			boolean b=sandimpl.addFood(sand);
			if(b)
				response.sendRedirect("admin/addNewFood.jsp?msg=done");
			else
				response.sendRedirect("admin/addNewFood.jsp?msg=wrong");
		}
		
		else if(userAction.equalsIgnoreCase("editFoodAction")) {
			int id=Integer.parseInt(request.getParameter("foodid"));
			String name=request.getParameter("name");
			String category=request.getParameter("category");
			int price=Integer.parseInt(request.getParameter("price"));
			String active=request.getParameter("active");
			
			Sand sand=new Sand();
			sand.setId(id);
			sand.setName(name);
			sand.setCategory(category);
			sand.setPrice(price);
			sand.setActive(active);
			
			boolean b=sandimpl.updateFood(sand);
			if(b)
				response.sendRedirect("admin/allFoodEditFood.jsp?msg=done");
			else
				response.sendRedirect("admin/allFoodEditFood.jsp?msg=wrong");
		}
		
		
		
	}

}
