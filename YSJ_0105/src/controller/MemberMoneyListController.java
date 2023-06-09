package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import vo.MemberMoneyVO;


@WebServlet("/memberMoneyList")
public class MemberMoneyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		MemberDao dao = new MemberDao();
		ArrayList<MemberMoneyVO> memberMoneyList = dao.getmemberMoney();
		
		request.setAttribute("memberMoneyList", memberMoneyList);
		request.getRequestDispatcher("/MemberMoneyList.jsp").forward(request, response);
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
