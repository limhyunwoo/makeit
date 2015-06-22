package m.board;

public class BoardBean {
	
	String boardNum; //게시글 등록번호
	String id;   //회원id
	String category;  //게시글 카테고리
	String title;   // 게시글 제목
	String boardArticle;  //게시글 본문내용
	String boardDate; //게시글 등록 날짜
	String replyFamily;  //리플과 리플에 대한 리플을 모아둘 수 있게 구별하는 변수
	String replyDepth;  // 리플의 뎁스(리플의 리플인지, 그냥 게시글에 대한 리플인지)
	int replySortNum; //리플들의 정렬 순서를 정하는 변수
	
	
	public String getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(String boardNum) {
		this.boardNum = boardNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBoardArticle() {
		return boardArticle;
	}
	public void setBoardArticle(String boardArticle) {
		this.boardArticle = boardArticle;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getReplyFamily() {
		return replyFamily;
	}
	public void setReplyFamily(String replyFamily) {
		this.replyFamily = replyFamily;
	}
	public String getReplyDepth() {
		return replyDepth;
	}
	public void setReplyDepth(String replyDepth) {
		this.replyDepth = replyDepth;
	}
	public int getReplySortNum() {
		return replySortNum;
	}
	public void setReplySortNum(int replySortNum) {
		this.replySortNum = replySortNum;
	}
	
	
	
	
	
	
	

}
