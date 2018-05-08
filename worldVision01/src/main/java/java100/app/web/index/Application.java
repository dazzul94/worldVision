package java100.app.web.index;

public class Application {
	private String type;
	private String member_id;
	private String name;
	private String tel1;
	private String tel2;
	private String tel3;
	private String htel1;
	private String htel2;
	private String htel3;
	private String email;
	private String zip1;
	private String zip2;
	private String address1;
	private String address2;
	private String contents;
	private String wdate;
	private String tpe2_opt1;
	private String tpe2_opt2;
	private String tpe2_jumin1;
	private String tpe2_jumin2;
	private String tp2_cms1;
	private String tp2_cms2;
	private String tp2_cms3;
	private String tp2_cms4;
	private String tp2_cms5;
	private String tp2_cms6;
	private String tp2_opt3;
	private String tp2_opt4;
	private String tpe3_opt1;
	private String tpe3_opt2;
	private String tpe3_opt3;
	private String tpe3_opt4;
	private String tpe1_opt1;
	private String tpe1_opt2;
	private String tpe1_opt3;
	private String tpe1_opt4;
	
	public Application() {
		super();
	}

	public Application(String type, String member_id, String name, String tel1, String tel2, String tel3,
			String htel1, String htel2, String htel3, String email, String zip1, String zip2, String address1,
			String address2, String contents, String wdate, String tmp, String tmp1, String tmp2,
			String tmp3) {
		super();
		this.type = type;
		this.member_id = member_id;
		this.name = name;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.htel1 = htel1;
		this.htel2 = htel2;
		this.htel3 = htel3;
		this.email = email;
		this.zip1 = zip1;
		this.zip2 = zip2;
		this.address1 = address1;
		this.address2 = address2;
		this.contents = contents;
		this.wdate = wdate;
		if(type.equals("1")) {
			tpe1_opt1 = tmp;
			tpe1_opt2 = tmp1;
			tpe1_opt3 = tmp2;
			tpe1_opt4 = tmp3;
		}else {
			tpe3_opt1 = tmp;
			tpe3_opt2 = tmp1;
			tpe3_opt3 = tmp2;
			tpe3_opt4 = tmp3;
		}
		
	}

	public Application(String type, String member_id, String name, String tel1, String tel2, String tel3,
			String htel1, String htel2, String htel3, String email, String zip1, String zip2, String address1,
			String address2, String contents, String wdate, String tpe2_opt1, String tpe2_opt2, String tpe2_jumin1,
			String tpe2_jumin2, String tp2_cms1, String tp2_cms2, String tp2_cms3, String tp2_cms4, String tp2_cms5,
			String tp2_cms6, String tp2_opt3, String tp2_opt4) {
		super();
		this.type = type;
		this.member_id = member_id;
		this.name = name;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.htel1 = htel1;
		this.htel2 = htel2;
		this.htel3 = htel3;
		this.email = email;
		this.zip1 = zip1;
		this.zip2 = zip2;
		this.address1 = address1;
		this.address2 = address2;
		this.contents = contents;
		this.wdate = wdate;
		this.tpe2_opt1 = tpe2_opt1;
		this.tpe2_opt2 = tpe2_opt2;
		this.tpe2_jumin1 = tpe2_jumin1;
		this.tpe2_jumin2 = tpe2_jumin2;
		this.tp2_cms1 = tp2_cms1;
		this.tp2_cms2 = tp2_cms2;
		this.tp2_cms3 = tp2_cms3;
		this.tp2_cms4 = tp2_cms4;
		this.tp2_cms5 = tp2_cms5;
		this.tp2_cms6 = tp2_cms6;
		this.tp2_opt3 = tp2_opt3;
		this.tp2_opt4 = tp2_opt4;
	}

	public Application(String type, String member_id, String name, String tel1, String tel2, String tel3,
			String htel1, String htel2, String htel3, String email, String zip1, String zip2, String address1,
			String address2, String contents, String wdate) {
		super();
		this.type = type;
		this.member_id = member_id;
		this.name = name;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.htel1 = htel1;
		this.htel2 = htel2;
		this.htel3 = htel3;
		this.email = email;
		this.zip1 = zip1;
		this.zip2 = zip2;
		this.address1 = address1;
		this.address2 = address2;
		this.contents = contents;
		this.wdate = wdate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public String getHtel1() {
		return htel1;
	}

	public void setHtel1(String htel1) {
		this.htel1 = htel1;
	}

	public String getHtel2() {
		return htel2;
	}

	public void setHtel2(String htel2) {
		this.htel2 = htel2;
	}

	public String getHtel3() {
		return htel3;
	}

	public void setHtel3(String htel3) {
		this.htel3 = htel3;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZip1() {
		return zip1;
	}

	public void setZip1(String zip1) {
		this.zip1 = zip1;
	}

	public String getZip2() {
		return zip2;
	}

	public void setZip2(String zip2) {
		this.zip2 = zip2;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getTpe2_opt1() {
		return tpe2_opt1;
	}

	public void setTpe2_opt1(String tpe2_opt1) {
		this.tpe2_opt1 = tpe2_opt1;
	}

	public String getTpe2_opt2() {
		return tpe2_opt2;
	}

	public void setTpe2_opt2(String tpe2_opt2) {
		this.tpe2_opt2 = tpe2_opt2;
	}

	public String getTpe2_jumin1() {
		return tpe2_jumin1;
	}

	public void setTpe2_jumin1(String tpe2_jumin1) {
		this.tpe2_jumin1 = tpe2_jumin1;
	}

	public String getTpe2_jumin2() {
		return tpe2_jumin2;
	}

	public void setTpe2_jumin2(String tpe2_jumin2) {
		this.tpe2_jumin2 = tpe2_jumin2;
	}

	public String getTp2_cms1() {
		return tp2_cms1;
	}

	public void setTp2_cms1(String tp2_cms1) {
		this.tp2_cms1 = tp2_cms1;
	}

	public String getTp2_cms2() {
		return tp2_cms2;
	}

	public void setTp2_cms2(String tp2_cms2) {
		this.tp2_cms2 = tp2_cms2;
	}

	public String getTp2_cms3() {
		return tp2_cms3;
	}

	public void setTp2_cms3(String tp2_cms3) {
		this.tp2_cms3 = tp2_cms3;
	}

	public String getTp2_cms4() {
		return tp2_cms4;
	}

	public void setTp2_cms4(String tp2_cms4) {
		this.tp2_cms4 = tp2_cms4;
	}

	public String getTp2_cms5() {
		return tp2_cms5;
	}

	public void setTp2_cms5(String tp2_cms5) {
		this.tp2_cms5 = tp2_cms5;
	}

	public String getTp2_cms6() {
		return tp2_cms6;
	}

	public void setTp2_cms6(String tp2_cms6) {
		this.tp2_cms6 = tp2_cms6;
	}

	public String getTp2_opt3() {
		return tp2_opt3;
	}

	public void setTp2_opt3(String tp2_opt3) {
		this.tp2_opt3 = tp2_opt3;
	}

	public String getTp2_opt4() {
		return tp2_opt4;
	}

	public void setTp2_opt4(String tp2_opt4) {
		this.tp2_opt4 = tp2_opt4;
	}

	public String getTpe3_opt1() {
		return tpe3_opt1;
	}

	public void setTpe3_opt1(String tpe3_opt1) {
		this.tpe3_opt1 = tpe3_opt1;
	}

	public String getTpe3_opt2() {
		return tpe3_opt2;
	}

	public void setTpe3_opt2(String tpe3_opt2) {
		this.tpe3_opt2 = tpe3_opt2;
	}

	public String getTpe3_opt3() {
		return tpe3_opt3;
	}

	public void setTpe3_opt3(String tpe3_opt3) {
		this.tpe3_opt3 = tpe3_opt3;
	}

	public String getTpe3_opt4() {
		return tpe3_opt4;
	}

	public void setTpe3_opt4(String tpe3_opt4) {
		this.tpe3_opt4 = tpe3_opt4;
	}

	public String getTpe1_opt1() {
		return tpe1_opt1;
	}

	public void setTpe1_opt1(String tpe1_opt1) {
		this.tpe1_opt1 = tpe1_opt1;
	}

	public String getTpe1_opt2() {
		return tpe1_opt2;
	}

	public void setTpe1_opt2(String tpe1_opt2) {
		this.tpe1_opt2 = tpe1_opt2;
	}

	public String getTpe1_opt3() {
		return tpe1_opt3;
	}

	public void setTpe1_opt3(String tpe1_opt3) {
		this.tpe1_opt3 = tpe1_opt3;
	}

	public String getTpe1_opt4() {
		return tpe1_opt4;
	}

	public void setTpe1_opt4(String tpe1_opt4) {
		this.tpe1_opt4 = tpe1_opt4;
	}
	
	
	
}
