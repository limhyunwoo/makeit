package m.reservation;

public class ReserveServiceImpl {
	public static String[][] seat = new String[5][5];
	public String movie;
	public String theater;
	public String date;
	public String time;
	public String number;
	public String id;
	
	public String selectSeat(int floor, int row, String id) {
		String msg = "";
		try {
			if (floor == 0){}
			if (row == 0){}
			if (seat[floor][row] != null) { 
				msg = "이미 예약된 좌석입니다.";
			} else {
				seat[floor][row] = id;
				msg = id + "님 좌석 선택이 완료 되었습니다";
			}
		} catch (Exception ex) {
			System.out.println("ReservationServiceImpl.checkIn() 에러발생");
		}
		return msg;
	}

	public String cancleSeat(int floor, int row, String id) {
		String msg="";
		
		try {
			if (floor == 0){}
			if (row == 0){}

			if (seat[floor][row] == null) { 
				msg = "이미 취소한 좌석입니다.";
			} else {
				id = seat[floor][row]; 
				seat[floor][row] = null;
				msg = id + "님 좌석 취소가 완료 되었습니다";
			}
		} catch (Exception ex) {
			System.out.println("ReservationServiceImpl.checkOut() 에러발생");
		}
		return msg;
	}
	public String reserveCancle(){
		return ""; /*예매 취소시 모든 값을 ""처리*/
	}

	public void setValue(String movie, String theater, String date,
			String time) {
		this.movie = movie;
		this.theater = theater;
		this.date = date;
		this.time = time;
	}
	public String getMovie(){
		
		return movie; /*movie theater date time 값을 리턴*/
	}
	public String getTheater(){
		
		return theater; 
	}
	public String getDate(){
		
		return date; 
	}
	public String getTime(){
		
		return time; 
	}
	public void setValueAdd(String number, String id){
		
	}
	public String getSeatValue(){
		return "";
	}
	public String getIdValue(){
		return "";
	}
}
