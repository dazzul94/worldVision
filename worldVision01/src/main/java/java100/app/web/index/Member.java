package java100.app.web.index;

public class Member {
	private int no;
	private String member_id;
	private String member_nick;
	private String member_pass;
	private String member_name;
	private String member_reg_no1;
	private String member_reg_no2;
	private String member_birth1;
	private String member_birth2;
	private String member_email;
	private String member_address1;
	private String member_address2;
	private String member_tel1;
	private String member_tel2;
	private String member_tel3;
	private String member_htel1;
	private String member_htel2;
	private String member_htel3;
	private String member_zip1;
	private String member_zip2;
	
	public Member() {
		super();
	}
	
	public Member(String member_id) {
		super();
		this.member_id = member_id;
	}

	public Member(int no, String member_id, String member_nick, String member_pass, String member_name,
			String member_reg_no, String member_reg_no2, String member_birth, String memeber_birth2,
			String member_email, String member_address, String member_address2, String member_tel, String member_tel2,
			String member_tel3, String member_htel, String member_htel2, String member_htel3) {
		super();
		this.no = no;
		this.member_id = member_id;
		this.member_nick = member_nick;
		this.member_pass = member_pass;
		this.member_name = member_name;
		this.member_reg_no1 = member_reg_no;
		this.member_reg_no2 = member_reg_no2;
		this.member_birth1 = member_birth;
		this.member_birth2 = memeber_birth2;
		this.member_email = member_email;
		this.member_address1 = member_address;
		this.member_address2 = member_address2;
		this.member_tel1 = member_tel;
		this.member_tel2 = member_tel2;
		this.member_tel3 = member_tel3;
		this.member_htel1 = member_htel;
		this.member_htel2 = member_htel2;
		this.member_htel3 = member_htel3;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_nick() {
		return member_nick;
	}

	public void setMember_nick(String member_nick) {
		this.member_nick = member_nick;
	}

	public String getMember_pass() {
		return member_pass;
	}

	public void setMember_pass(String member_pass) {
		this.member_pass = member_pass;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_reg_no1() {
		return member_reg_no1;
	}

	public void setMember_reg_no1(String member_reg_no1) {
		this.member_reg_no1 = member_reg_no1;
	}

	public String getMember_reg_no2() {
		return member_reg_no2;
	}

	public void setMember_reg_no2(String member_reg_no2) {
		this.member_reg_no2 = member_reg_no2;
	}

	public String getMember_birth1() {
		return member_birth1;
	}

	public void setMember_birth1(String member_birth1) {
		this.member_birth1 = member_birth1;
	}

	public String getMember_birth2() {
		return member_birth2;
	}

	public void setMember_birth2(String member_birth2) {
		this.member_birth2 = member_birth2;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_address1() {
		return member_address1;
	}

	public void setMember_address1(String member_address1) {
		this.member_address1 = member_address1;
	}

	public String getMember_address2() {
		return member_address2;
	}

	public void setMember_address2(String member_address2) {
		this.member_address2 = member_address2;
	}

	public String getMember_tel1() {
		return member_tel1;
	}

	public void setMember_tel1(String member_tel1) {
		this.member_tel1 = member_tel1;
	}

	public String getMember_tel2() {
		return member_tel2;
	}

	public void setMember_tel2(String member_tel2) {
		this.member_tel2 = member_tel2;
	}

	public String getMember_tel3() {
		return member_tel3;
	}

	public void setMember_tel3(String member_tel3) {
		this.member_tel3 = member_tel3;
	}

	public String getMember_htel1() {
		return member_htel1;
	}

	public void setMember_htel1(String member_htel1) {
		this.member_htel1 = member_htel1;
	}

	public String getMember_htel2() {
		return member_htel2;
	}

	public void setMember_htel2(String member_htel2) {
		this.member_htel2 = member_htel2;
	}

	public String getMember_htel3() {
		return member_htel3;
	}

	public void setMember_htel3(String member_htel3) {
		this.member_htel3 = member_htel3;
	}
	
	public String getMember_zip1() {
		return member_zip1;
	}

	public void setMember_zip1(String member_zip1) {
		this.member_zip1 = member_zip1;
	}

	public String getMember_zip2() {
		return member_zip2;
	}

	public void setMember_zip2(String member_zip2) {
		this.member_zip2 = member_zip2;
	}

	@Override
	public String toString() {
		return "Member [no=" + no + ", member_id=" + member_id + ", member_nick=" + member_nick + ", member_pass="
				+ member_pass + ", member_name=" + member_name + ", member_reg_no=" + member_reg_no1
				+ ", member_reg_no2=" + member_reg_no2 + ", member_birth=" + member_birth1 + ", member_birth2="
				+ member_birth2 + ", member_email=" + member_email + ", member_address=" + member_address1
				+ ", member_address2=" + member_address2 + ", member_tel=" + member_tel1 + ", member_tel2=" + member_tel2
				+ ", member_tel3=" + member_tel3 + ", member_htel=" + member_htel1 + ", member_htel2=" + member_htel2
				+ ", member_htel3=" + member_htel3 + "]";
	}
	
	
}
