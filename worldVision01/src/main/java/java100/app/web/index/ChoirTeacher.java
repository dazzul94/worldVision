package java100.app.web.index;

public class ChoirTeacher {
	private String img1_thumbo;
	private String kor_name1;
	private String kor_name2;
	private String kor_contents;
	private String eng_name1;
	private String eng_name2;
	private String eng_contents;
	
	public ChoirTeacher() {
		super();
	}

	public ChoirTeacher(String img1_thumbo, String kor_name1, String kor_name2, String kor_contents, String eng_name1,
			String eng_name2, String eng_contents) {
		super();
		this.img1_thumbo = img1_thumbo;
		this.kor_name1 = kor_name1;
		this.kor_name2 = kor_name2;
		this.kor_contents = kor_contents;
		this.eng_name1 = eng_name1;
		this.eng_name2 = eng_name2;
		this.eng_contents = eng_contents;
	}

	public String getImg1_thumbo() {
		return img1_thumbo;
	}

	public void setImg1_thumbo(String img1_thumbo) {
		this.img1_thumbo = img1_thumbo;
	}

	public String getKor_name1() {
		return kor_name1;
	}

	public void setKor_name1(String kor_name1) {
		this.kor_name1 = kor_name1;
	}

	public String getKor_name2() {
		return kor_name2;
	}

	public void setKor_name2(String kor_name2) {
		this.kor_name2 = kor_name2;
	}

	public String getKor_contents() {
		return kor_contents;
	}

	public void setKor_contents(String kor_contents) {
		this.kor_contents = kor_contents;
	}

	public String getEng_name1() {
		return eng_name1;
	}

	public void setEng_name1(String eng_name1) {
		this.eng_name1 = eng_name1;
	}

	public String getEng_name2() {
		return eng_name2;
	}

	public void setEng_name2(String eng_name2) {
		this.eng_name2 = eng_name2;
	}

	public String getEng_contents() {
		return eng_contents;
	}

	public void setEng_contents(String eng_contents) {
		this.eng_contents = eng_contents;
	}
	
	
}
