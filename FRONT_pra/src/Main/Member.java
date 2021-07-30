package Main;

public class Member {
	
	private String mid;
	private String mpw;
	private String memail;
	private String mphone;
	private String mname;
	
	public Member() {}

	public Member(String mid, String mpw, String memail, String mphone, String mname) {
		this.mid = mid;
		this.mpw = mpw;
		this.memail = memail;
		this.mphone = mphone;
		this.mname = mname;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}
	
	
}
