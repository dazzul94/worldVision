package java100.app.web.index;

public class Board {
	private int bbs_no;
	private String bbs_name;
	private String bbs_subject;
	private String bbs_content;
	private int bbs_hit;
	private String bbs_date;

	public Board() {
		super();
	}
	
	public Board(int bbs_no, String bbs_name, String bbs_subject, String bbs_content, int bbs_hit, String bbs_date) {
		super();
		this.bbs_no = bbs_no;
		this.bbs_name = bbs_name;
		this.bbs_subject = bbs_subject;
		this.bbs_content = bbs_content;
		this.bbs_hit = bbs_hit;
		this.bbs_date = bbs_date;
	}

	public int getBbs_no() {
		return bbs_no;
	}

	public void setBbs_no(int bbs_no) {
		this.bbs_no = bbs_no;
	}

	public String getBbs_name() {
		return bbs_name;
	}

	public void setBbs_name(String bbs_name) {
		this.bbs_name = bbs_name;
	}

	public String getBbs_subject() {
		return bbs_subject;
	}

	public void setBbs_subject(String bbs_subject) {
		this.bbs_subject = bbs_subject;
	}

	public String getBbs_content() {
		return bbs_content;
	}

	public void setBbs_content(String bbs_content) {
		this.bbs_content = bbs_content;
	}

	public int getBbs_hit() {
		return bbs_hit;
	}

	public void setBbs_hit(int bbs_hit) {
		this.bbs_hit = bbs_hit;
	}

	public String getBbs_date() {
		return bbs_date;
	}

	public void setBbs_date(String bbs_date) {
		this.bbs_date = bbs_date;
	}

	@Override
	public String toString() {
		return "Board [bbs_no=" + bbs_no + ", bbs_name=" + bbs_name + ", bbs_subject=" + bbs_subject + ", bbs_content="
				+ bbs_content + ", bbs_hit=" + bbs_hit + ", bbs_date=" + bbs_date + "]";
	}
	
}
