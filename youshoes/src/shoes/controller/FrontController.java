package shoes.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoes.command.Command;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> list =null;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		list=new HashMap<String, Command>();
//		list.put("", value);
		// 유승우가 만든 Command
		list.put("", );
		// 구교동가 만든 Command
		
		// 권우성가 만든 Command
		
		// 배광준가 만든 Command
		
		// 최인호가 만든 Command
		
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		
		Command commandImpl = list.get(path);
		
		String page = null;
		
		response.setContentType("text/html; charset=UTF-8");
		
		if(commandImpl!=null) {
			page = commandImpl.execute(request, response);
			
			if(page!=null && !page.isEmpty()) {
				if(page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				}else if(page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				}else if(page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				}else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			}else {
				response.getWriter().append("잘못된 요청입니다.");
			}

		}
	}

}
