package java100.app.domain;

public class About {

	int no;
	int cate;
	String year;
	String month;
	String date;
	String contents;
	String etc;
	String wdate;
	@Override
	public String toString() {
		return "About [no=" + no + ", cate=" + cate + ", year=" + year + ", month=" + month + ", date=" + date
				+ ", contents=" + contents + ", etc=" + etc + ", wdate=" + wdate + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCate() {
		return cate;
	}
	public void setCate(int cate) {
		this.cate = cate;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
	
	
	
}



