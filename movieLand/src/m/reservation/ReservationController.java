package m.reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/reservation/selection.do",
			"/reservation/reserveSeat.do",
			"/reservation/selectSeat.do",
			"/reservation/cancleSeat.do",
			"/reservation/seatComplete.do"})
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ReserveServiceImpl service = new ReserveServiceImpl();
    String[][] seat = new String[5][5];
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = request.getServletPath();
	
		switch (path) {
		case "/reservation/selection.do": goConfirm(request, response); break;
		case "/reservation/reserveSeat.do": goReserve(request, response); break;
		case "/reservation/selectSeat.do": goSelect(request, response);	break;
		case "/reservation/cancleSeat.do": goCancle(request, response);	break;
		case "/reservation/seatComplete.do": goComplete(request, response); break;
		}
	}
	
	private void goConfirm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String[] input = {request.getParameter("movie"),request.getParameter("theater")
						,request.getParameter("date"),request.getParameter("time")};
		request.setAttribute("movie",input[0]);
		request.setAttribute("theater",input[1]);
		request.setAttribute("date",input[2]);
		request.setAttribute("time",input[3]);
		service.setValue(input[0],input[1],input[2],input[3]);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation/reservationSelection.jsp");
		dispatcher.forward(request, response);
		/*이건 뭐지 */
	}

	private void goReserve(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String[] input = {request.getParameter("movie"),request.getParameter("theater")
						,request.getParameter("date"),request.getParameter("time")};
		request.setAttribute("movie",input[0]);
		request.setAttribute("theater",input[1]);
		request.setAttribute("date",input[2]);
		request.setAttribute("time",input[3]);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation/reservationSeat.jsp");
		dispatcher.forward(request, response);
	}

	private void goSelect(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
/*		String[] input = {request.getParameter("movie"),request.getParameter("theater")
				,request.getParameter("date"),request.getParameter("time")};
		System.out.println("goSelect movie"+input[0]);
		request.setAttribute("movie",input[0]);
		request.setAttribute("theater",input[1]);
		request.setAttribute("date",input[2]);
		request.setAttribute("time",input[3]);    >>> null 값 */
		
		int floor = Integer.parseInt(request.getParameter("floor"))-1;
		int row = Integer.parseInt(request.getParameter("row"))-1;
		String id = request.getParameter("id");
		String msg = service.selectSeat(floor, row, id);
		seat[floor][row] = id;
		request.setAttribute("msg", msg);
		request.setAttribute("seat", seat);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation/reservationSeat.jsp");
		dispatcher.forward(request, response);
		
	}
	private void goCancle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int floor = Integer.parseInt(request.getParameter("floor"))-1;
		int row = Integer.parseInt(request.getParameter("row"))-1;
		String id = request.getParameter("id");
		String msg = service.cancleSeat(floor, row, id);
		seat[floor][row] = null;
		request.setAttribute("msg", msg);
		request.setAttribute("seat", seat);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation/reservationSeat.jsp");
		dispatcher.forward(request, response);
	}
	private void goComplete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String movie = service.getMovie();
		System.out.println("getmovie"+movie);
/*		String[] input = {request.getParameter("movie"),request.getParameter("theater")
						,request.getParameter("date"),request.getParameter("time")};
		System.out.println("movie값:"+input[0]);
		request.setAttribute("movie",input[0]);
		request.setAttribute("theater",input[1]);
		request.setAttribute("date",input[2]);
		request.setAttribute("time",input[3]);
		value 어떻게 이동할지..
		int floor = Integer.parseInt(request.getParameter("floor"))-1;
		int row = Integer.parseInt(request.getParameter("row"))-1;
		String id = request.getParameter("id");
		String msg = service.cancleSeat(floor, row, id);
		seat[floor][row] = null;
		request.setAttribute("seat", seat);
		request.setAttribute("id", id);*/
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation/reservationHistory.jsp");
		dispatcher.forward(request, response);
		
	}
}