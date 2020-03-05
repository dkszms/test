package com.test.recipe;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.db.RecipeDB;

/**
 * Servlet implementation class RecipeDetail
 */
@WebServlet("/detail")
public class RecipeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeDetail() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String recipeId = request.getParameter("id");
		
		System.out.println(recipeId);
		
		RecipeDB rdb = new RecipeDB();
		ArrayList<Map<String, Object>> stepAL = rdb.recipeDetail(recipeId);		
		request.setAttribute("stepAL", stepAL);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/recipeDetail.jsp");
		dispatcher.forward(request, response);
	}


}
