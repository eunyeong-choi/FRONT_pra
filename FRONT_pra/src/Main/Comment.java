package Main;

public class Comment {
	
	private String cid;
	private String ccomment;
	private String cdate;
	private int cno;
	private int bno;
	
	public Comment() {}

	public Comment(String cid, String ccomment, String cdate, int cno, int bno) {
		this.cid = cid;
		this.ccomment = ccomment;
		this.cdate = cdate;
		this.cno = cno;
		this.bno = bno;
	}
	public Comment( int cno, String cid, String ccomment, String cdate) {
		this.cid = cid;
		this.ccomment = ccomment;
		this.cdate = cdate;
		this.cno = cno;

	}
	
	public Comment(String cid, String ccomment, String cdate, int bno) {
		this.cid = cid;
		this.ccomment = ccomment;
		this.cdate = cdate;
		this.bno = bno;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCcomment() {
		return ccomment;
	}

	public void setCcomment(String ccomment) {
		this.ccomment = ccomment;
	}

	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}
	
	

}
