package java100.app.domain.index;

public class Comment {
	private int comm_no;
	private int comm_fid;
	private String comm_thread;
	private String comm_bbs_id;
	private int comm_bbs_no;
	private int comm_emot;
	private String comm_name;
	private String comm_content;
	private String comm_pass;
	private String comm_ip;
	private String comm_date;
	
	public Comment() {
		super();
	}
	
	public int getComm_emot() {
		return comm_emot;
	}

	public void setComm_emot(int comm_emot) {
		this.comm_emot = comm_emot;
	}

	public String getComm_ip() {
		return comm_ip;
	}

	public void setComm_ip(String comm_ip) {
		this.comm_ip = comm_ip;
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

	public int getComm_fid() {
		return comm_fid;
	}

	public void setComm_fid(int comm_fid) {
		this.comm_fid = comm_fid;
	}

	public String getComm_thread() {
		return comm_thread;
	}

	public void setComm_thread(String comm_thread) {
		this.comm_thread = comm_thread;
	}
		
}
