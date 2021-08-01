package Main;

public class Board {
	
	private int bno;
	private String btitle;
	private String bwriter;//mid
	private String bdate;
	private String bcontents;
	
	public Board() {}

	//디비 꺼내오기
	public Board(int bno, String btitle, String bwriter, String bdate, String bcontents) {
		this.bno = bno;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bdate = bdate;
		this.bcontents = bcontents;
	}
	
	//디비 넣기
	public Board(String btitle, String bwriter, String bdate, String bcontents) {
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bdate = bdate;
		this.bcontents = bcontents;
	}
	
	//게시글 출력용
	public Board(int bno, String btitle, String bcontents) {
		this.bno = bno;
		this.btitle = btitle;
		this.bcontents = bcontents;
	}
	public Board( String btitle, String bcontents) {
		this.btitle = btitle;
		this.bcontents = bcontents;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getBcontents() {
		return bcontents;
	}

	public void setBcontents(String bcontents) {
		this.bcontents = bcontents;
	}
}
