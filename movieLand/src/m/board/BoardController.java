package m.board;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet({"/board/moviereview.do","/board/notice.do","/board/article.do", "/board/noticeArticle.do"})
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   BoardBean bean = new BoardBean();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		
		
        
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String path = request.getServletPath();
		String id = request.getParameter("id");
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String memo = request.getParameter("memo");
		String documentpassword = request.getParameter("documentpassword");

		switch (path) {
		case "/board/moviereview.do":		
			
			bean.setCategory(category);
			
//			bean.setId(id);
			bean.setBoardArticle(memo);
			bean.setTitle(title);

			request.setAttribute("memo", memo);
			request.setAttribute("id", id);
			request.setAttribute("category", category);
			request.setAttribute("title", title);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/board/menu.jsp"); 
			dispatcher.forward(request,response);
			
			break;
			
		case "/board/article.do":									
			request.setAttribute("memo", bean.getBoardArticle());
			request.setAttribute("id", bean.getId());
			request.setAttribute("category", bean.getCategory());
			request.setAttribute("title", bean.getTitle());
			
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("/board/article.jsp");   /*��ȭ����Խ��� �ۺ���*/
			dispatcher1.forward(request,response);
			
		break;
		
		case "/board/notice.do":								
			bean.setCategory(category);
			
//			bean.setId(id);
			bean.setBoardArticle(memo);
			bean.setTitle(title);
			
			request.setAttribute("id", "administrator");
			request.setAttribute("memo", memo);
			request.setAttribute("category", category);
			request.setAttribute("title", title);
			
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("/board/noticeMenu.jsp");   /*�������� �ʱ�ȭ��*/
			dispatcher2.forward(request,response);
			
			break;
			
			case "/board/noticeArticle.do":			
				
				request.setAttribute("memo", bean.getBoardArticle());
				request.setAttribute("id", bean.getId());
				request.setAttribute("category", bean.getCategory());
				request.setAttribute("title", bean.getTitle());
				
				RequestDispatcher dispatcher3 = request.getRequestDispatcher("/board/noticeArticle.jsp");    /*�������� �ۺ���*/
				dispatcher3.forward(request,response);
				
			break;
			
			
			
			default:
			break;
		}

	}
		

		
		
		
		

	

		
		
	


	


	


}