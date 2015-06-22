package m.movie;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.startup.SetAllPropertiesRule;

/**
 * Servlet implementation class movieController
 * 영화 이름이나 그림 누르면 이동 함
 */
@WebServlet({ "/movie/view1.do", "/movie/view2.do","/movie/view3.do","/movie/view4.do","/movie/view5.do","/movie/view6.do","/movie/view7.do","/movie/view8.do" })
public class movieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String id,pass;
		String msg;
		System.out.println(request.getServletPath());
		switch (request.getServletPath()) {
		case "/movie/view1.do":
			movie1(request, response);
			break;
		case "/movie/view2.do":
			movie2(request, response);
			break;
		case "/movie/view3.do":
			movie3(request, response);
			break;
		case "/movie/view4.do":
			movie4(request, response);
			break;
		case "/movie/view5.do":
			movie5(request, response);
			break;
		case "/movie/view6.do":
			movie6(request, response);
			break;
		case "/movie/view7.do":
			movie7(request, response);
			break;
		case "/movie/view8.do":
			movie8(request, response);
			break;
		default:
			break;
		}


	}
	private void movie1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "쥬라기 월드"
				+ "<br/>"
				+ "Jurassic World, 2015"
				+ "<br/>"
				+ "살아있는 모든 것을 압도할 그들이 깨어났다!"
				+ "<br/>"
				+ "‘쥬라기 공원’이 문을 닫은 지 22년, 유전자 조작으로 탄생한 공룡들을 앞세운 ‘쥬라기 월드’<br/>"
				+ "는 지상 최대의 테마파크로 자리잡는다. 하지만 새롭게 태어난 하이브리드 공룡들은 지능과 공격성을 <br/>"
				+ " 끝없이 진화시키며 인간의 통제를 벗어나기 시작하는데…<br/>"
				+ "돌아온 공룡의 세상! 인류에게 닥친 최악의 위협!<br/>"
				+ "12세 이상 관람가 액션 어드벤처 SF스릴러<br/>"
				+ "감독 / 출연콜린 트레보로우 / 크리스 프랫,브라이스 달라스 하워드,빈센트 도노프리오,타이 심킨스,닉 로빈슨<br/>"
				+ "제작국가 미국 / 장르 액션,어드벤처,SF,스릴러<br/>"
				+ " / 등급 12세이상/ 개봉일 2015.06.11 / 상영시간  홈페이지125분 / jurassicworld.kr<br/>";
				
		String url = "http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000078/78036/78036128267_1024.JPG";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78036/78036_214.jpg";
		String iFrame = "https://www.youtube.com/embed/JPZ1x4Bw5js";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}

	private void movie2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "샌 안드레아스"
				+ "<br/>"
				+ "San Andreas, 2015"
				+ "<br/>"
				+ "마침내 모든 것이 무너진다"
				+ "<br/>"
				+ "구조헬기 조종사 드웨인 존슨은 사이가 멀어진 아내와 함께<br/>"
				+ "외동딸을 구하기 위해 최악의 상황 속으로 뛰어든다. <br/>"
				+ "세상이 무너지는 마지막 순간, 당신은 어디에서 누구와 함께 할 것인가!<br/>"
				+ "드라마 액션 스릴러<br/>"
				+ "감독 / 출연브래드 페이튼 / 드웨인 존슨,알렉산드라 다드다리오,칼라 구기노,콜튼 하인즈,폴 지아마티,윌 윤 리<br/>"
				+ "제작국가 / 장르미국 / 드라마,액션,스릴러<br/>"
				+ "등급 / 개봉일 12세이상 / 2015.06.03 상영시간 / 홈페이지114분 /<br/>";
				
		String url = "http://img.cgv.co.kr/Movie/Thumbnail/Trailer/78226/78226128191_1024.jpg";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78226/78226_214.jpg";
		String iFrame = "https://www.youtube.com/embed/7Ud_mxrxQHU";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}
	
	private void movie3(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "스파이"
				+ "<br/>"
				+ "Spy , 2015"
				+ "<br/>"
				+ "스파이도 모르는 스파이! 그들이 벌써 긴장했다!"
				+ "<br/>"
				+ "현장 요원들의 임무 수행을 돕는 CIA의 내근 요원 수잔 쿠퍼(멜리사 맥카시)<br/>"
				+ "외모, 임무 수행 등 완벽한 최고의 요원 브래들리 파인(주드 로)의 파트너로 <br/>"
				+ "임무를 수행을 하던 중, 핵무기 밀거래를 추진하는 마피아들에게 CIA 현장<br/>"
				+ "요원들의 신분이 모두 노출되는 사건이 발생한다. 마피아들이 모르는 내근 요원<br/>"
				+ "수잔은 CIA의 최대 위기를 극복하고 핵무기의 밀거래를 막기 위해 현장에 투입된다.<br/>"
				+ "그러나, 그녀를 못 믿는 ‘자칭’ 최고의 요원 릭 포드(제이슨 스타뎀)가 그녀와 별개로<br/>"
				+ "임무를 수행하면서 그녀의 미션은 위기에 직면하게 되는데…<br/>"
				+"감독 / 출연 폴 페이그 / 주드 로,제이슨 스타뎀,멜리사 맥카시</br>"
				+ "제작국가 / 장르미국 / 액션,코미디</br>"
				+ "등급 / 개봉일  15세이상 / 2015.05.21</br>"
				+ "상영시간 / 홈페이지122분 /</br>";
				
		String url = "http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000078/78240/78240127040_1024.jpg";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78240/78240_214.jpg";
		String iFrame = "https://www.youtube.com/embed/E7QBA1sCYOQ";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}
	private void movie4(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "매드맥스: 분노의 도로"
				+ "<br/>"
				+ "Spy , 2015"
				+ "<br/>"
				+ "22세기 재난 블록버스터"
				+ "<br/>"
				+ "현장 요원들의 임무 수행을 돕는 CIA의 내근 요원 수잔 쿠퍼(멜리사 맥카시)<br/>"
				+ "외모, 임무 수행 등 완벽한 최고의 요원 브래들리 파인(주드 로)의 파트너로 <br/>"
				+ "임무를 수행을 하던 중, 핵무기 밀거래를 추진하는 마피아들에게 CIA 현장<br/>"
				+ "요원들의 신분이 모두 노출되는 사건이 발생한다. 마피아들이 모르는 내근 요원<br/>"
				+ "수잔은 CIA의 최대 위기를 극복하고 핵무기의 밀거래를 막기 위해 현장에 투입된다.<br/>"
				+ "그러나, 그녀를 못 믿는 ‘자칭’ 최고의 요원 릭 포드(제이슨 스타뎀)가 그녀와 별개로<br/>"
				+ "임무를 수행하면서 그녀의 미션은 위기에 직면하게 되는데…<br/>"
				+"감독 / 출연 폴 페이그 / 주드 로,제이슨 스타뎀,멜리사 맥카시</br>"
				+ "제작국가 / 장르미국 / 액션,코미디</br>"
				+ "등급 / 개봉일  15세이상 / 2015.05.21</br>"
				+ "상영시간 / 홈페이지122분 /</br>";
				
		String url = "http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000078/78207/78207127220_1024.jpg";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78207/78207_214.jpg";
		String iFrame = "https://www.youtube.com/embed/p-fDEhVBnv4";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}
	
	
	private void movie5(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "극비수사"
				+ "<br/>"
				+ "극비수사 | The Classified File, 2015"
				+ "<br/>"
				+ "1978년 부산에서 일어난 실제 이야기"
				+ "<br/>"
				+ "보호하기 위해 극비 수사를 진행하기로 한다. 한편, 가족들은 유명한 점술집을 돌아다니며 아이의<br/>"
				+ "생사여부를 확인하지만 이미 아이가 죽었다는 절망적인 답만 듣게 되고, 마지막으로 도사 김중산을 찾아간다. <br/>"
				+ "“분명히 살아 있습니다”<br/>"
				+ "아이의 사주를 풀어보던 김도사는 아직 아이가 살아있고, 보름 째 되는 날 범인으로부터 첫 연락이 온다고<br/>"
				+ "확신한다. 보름째 되는 날, 김도사의 말대로 연락이 오고, 범인이 보낸 단서로 아이가 살아있음을 확신한<br/>"
				+ "공형사는 김도사의 말을 믿게 된다. 하지만 한 달이 지나도록 수사는 진전되지 않고, 모두가 아이의 생사 보다<br/>"
				+ "범인 찾기에 혈안이 된 상황 속에 공형사와 김도사 두 사람만이 아이를 살리기 위한 수사를 계속 진행하는데…<br/>"
				+ "“6월, 도사는 예언하고 형사는 움직인다”<br/>"
				+ "감독 / 출연곽경택 /김윤석,유해진,송영창,장영남제작국가 / 장르한국 / 드라마,범죄등급 <br/>/ 개봉일 15세이상 / 2015.06.18 상영시간 / 홈페이지107분 /<br/>";
				
		String url = " http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000078/78276/78276128378_1024.jpg";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78276/78276_214.jpg";
		String iFrame = "https://www.youtube.com/embed/PcaIQM2b-Uo";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}
	private void movie6(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "경성 학교"
				+ "<br/>"
				+ "Spy , 2015"
				+ "<br/>"
				+ "22세기 재난 블록버스터"
				+ "<br/>"
				+ "현장 요원들의 임무 수행을 돕는 CIA의 내근 요원 수잔 쿠퍼(멜리사 맥카시)<br/>"
				+ "외모, 임무 수행 등 완벽한 최고의 요원 브래들리 파인(주드 로)의 파트너로 <br/>"
				+ "임무를 수행을 하던 중, 핵무기 밀거래를 추진하는 마피아들에게 CIA 현장<br/>"
				+ "요원들의 신분이 모두 노출되는 사건이 발생한다. 마피아들이 모르는 내근 요원<br/>"
				+ "수잔은 CIA의 최대 위기를 극복하고 핵무기의 밀거래를 막기 위해 현장에 투입된다.<br/>"
				+ "그러나, 그녀를 못 믿는 ‘자칭’ 최고의 요원 릭 포드(제이슨 스타뎀)가 그녀와 별개로<br/>"
				+ "임무를 수행하면서 그녀의 미션은 위기에 직면하게 되는데…<br/>"
				+"감독 / 출연 폴 페이그 / 주드 로,제이슨 스타뎀,멜리사 맥카시</br>"
				+ "제작국가 / 장르미국 / 액션,코미디</br>"
				+ "등급 / 개봉일  15세이상 / 2015.05.21</br>"
				+ "상영시간 / 홈페이지122분 /</br>";
				
		String url = "http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000078/78277/78277128482_1024.jpg";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78277/78277_214.jpg";
		String iFrame = "https://www.youtube.com/embed/LZFUkqZhYls";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}
	private void movie7(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "령"
				+ "<br/>"
				+ "Spy , 2015"
				+ "<br/>"
				+ "22세기 재난 블록버스터"
				+ "<br/>"
				+ "현장 요원들의 임무 수행을 돕는 CIA의 내근 요원 수잔 쿠퍼(멜리사 맥카시)<br/>"
				+ "외모, 임무 수행 등 완벽한 최고의 요원 브래들리 파인(주드 로)의 파트너로 <br/>"
				+ "임무를 수행을 하던 중, 핵무기 밀거래를 추진하는 마피아들에게 CIA 현장<br/>"
				+ "요원들의 신분이 모두 노출되는 사건이 발생한다. 마피아들이 모르는 내근 요원<br/>"
				+ "수잔은 CIA의 최대 위기를 극복하고 핵무기의 밀거래를 막기 위해 현장에 투입된다.<br/>"
				+ "그러나, 그녀를 못 믿는 ‘자칭’ 최고의 요원 릭 포드(제이슨 스타뎀)가 그녀와 별개로<br/>"
				+ "임무를 수행하면서 그녀의 미션은 위기에 직면하게 되는데…<br/>"
				+"감독 / 출연 폴 페이그 / 주드 로,제이슨 스타뎀,멜리사 맥카시</br>"
				+ "제작국가 / 장르미국 / 액션,코미디</br>"
				+ "등급 / 개봉일  15세이상 / 2015.05.21</br>"
				+ "상영시간 / 홈페이지122분 /</br>";
				
		String url = "http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000078/78267/78267127651_1024.jpg";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78267/78267_214.jpg";
		String iFrame = "https://www.youtube.com/embed/6K4u1mR0t8M";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}
	private void movie8(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg;
		msg = "은밀한 유혹"
				+ "<br/>"
				+ "Spy , 2015"
				+ "<br/>"
				+ "22세기 재난 블록버스터"
				+ "<br/>"
				+ "현장 요원들의 임무 수행을 돕는 CIA의 내근 요원 수잔 쿠퍼(멜리사 맥카시)<br/>"
				+ "외모, 임무 수행 등 완벽한 최고의 요원 브래들리 파인(주드 로)의 파트너로 <br/>"
				+ "임무를 수행을 하던 중, 핵무기 밀거래를 추진하는 마피아들에게 CIA 현장<br/>"
				+ "요원들의 신분이 모두 노출되는 사건이 발생한다. 마피아들이 모르는 내근 요원<br/>"
				+ "수잔은 CIA의 최대 위기를 극복하고 핵무기의 밀거래를 막기 위해 현장에 투입된다.<br/>"
				+ "그러나, 그녀를 못 믿는 ‘자칭’ 최고의 요원 릭 포드(제이슨 스타뎀)가 그녀와 별개로<br/>"
				+ "임무를 수행하면서 그녀의 미션은 위기에 직면하게 되는데…<br/>"
				+"감독 / 출연 폴 페이그 / 주드 로,제이슨 스타뎀,멜리사 맥카시</br>"
				+ "제작국가 / 장르미국 / 액션,코미디</br>"
				+ "등급 / 개봉일  15세이상 / 2015.05.21</br>"
				+ "상영시간 / 홈페이지122분 /</br>";
				
		String url = "http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000077/77552/77552127476_1024.jpg";
		String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000077/77552/77552_214.jpg";
		String iFrame = "https://www.youtube.com/embed/UctsnAxCEzI";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		request.setAttribute("img", img);
		request.setAttribute("iFrame", iFrame);
		
		RequestDispatcher dispatcher2 = request.getRequestDispatcher("/movie/movie2.jsp");
		dispatcher2.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
