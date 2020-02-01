package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginCheckServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName=request.getParameter("username");
		String userPwd=request.getParameter("password");
		String info="";
		if (("abc".equals(userName))&&("123".equals(userPwd))) {
			info="欢迎你"+userName+"!";
		} else {
			info="用户名或密码输入错误";
		}
		request.setAttribute("outputMessage", info);
		request.getRequestDispatcher("/info.jsp").forward(request, response);
	}

}
