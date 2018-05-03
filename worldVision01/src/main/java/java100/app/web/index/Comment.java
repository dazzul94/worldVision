package java100.app.web.index;

public class Comment {
	private int comm_no;
	private String comm_bbs_id;
	private int comm_bbs_no;
	private String comm_name;
	private String comm_content;
	private String comm_pass;
	private String comm_date;
	
	public Comment() {
		super();
	}
	
	public Comment(int comm_no, String comm_bbs_id, String comm_name, String comm_content, String comm_pass,
			String comm_date) {
		super();
		this.comm_no = comm_no;
		this.comm_bbs_id = comm_bbs_id;
		this.comm_name = comm_name;
		this.comm_content = comm_content;
		this.comm_pass = comm_pass;
		this.comm_date = comm_date;
	}

	public int getComm_no() {
		return comm_no;
	}

	public void setComm_no(int comm_no) {
		this.comm_no = comm_no;
	}

	public String getComm_bbs_id() {
		return comm_bbs_id;
	}

	public void setComm_bbs_id(String comm_bbs_id) {
		this.comm_bbs_id = comm_bbs_id;
	}
	
	public int getComm_bbs_no() {
		return comm_bbs_no;
	}

	public void setComm_bbs_no(int comm_bbs_no) {
		this.comm_bbs_no = comm_bbs_no;
	}

	public String getComm_name() {
		return comm_name;
	}

	public void setComm_name(String comm_name) {
		this.comm_name = comm_name;
	}

	public String getComm_content() {
		return comm_content;
	}

	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}

	public String getComm_pass() {
		return comm_pass;
	}

	public void setComm_pass(String comm_pass) {
		this.comm_pass = comm_pass;
	}

	public String getComm_date() {
		return comm_date;
	}

	public void setComm_date(String comm_date) {
		this.comm_date = comm_date;
	}
		
}