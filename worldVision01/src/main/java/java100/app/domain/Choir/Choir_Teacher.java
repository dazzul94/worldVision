package java100.app.domain.Choir;

public class Choir_Teacher {
	int ct_no;
	int c_no;
	String img1_micro;
	String img1_thumbo;
	String kor_name1;
	String kor_name2;
	String kor_contents;
	String eng_name1;
	String eng_name2;
	String eng_contents;
	int sort;
	String wdate;
	String originalFilename;
	
	@Override
	public String toString() {
		return "ChoirTeacher [ct_no=" + ct_no + ", c_no=" + c_no + ", img1_micro=" + img1_micro + ", img1_thumbo="
				+ img1_thumbo + ", kor_name1=" + kor_name1 + ", kor_name2=" + kor_name2 + ", kor_contents="
				+ kor_contents + ", eng_name1=" + eng_name1 + ", eng_name2=" + eng_name2 + ", eng_contents="
				+ eng_contents + ", sort=" + sort + ", wdate=" + wdate + ", originalFilename=" + originalFilename + "]";
	}
	public int getCt_no() {
		return ct_no;
	}
	public void setCt_no(int ct_no) {
		this.ct_no = ct_no;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public String getImg1_micro() {
		return img1_micro;
	}
	public void setImg1_micro(String img1_micro) {
		this.img1_micro = img1_micro;
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
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	
	
}
