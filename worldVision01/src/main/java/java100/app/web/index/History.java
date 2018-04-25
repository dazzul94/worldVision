package java100.app.web.index;

public class History {
	private String contents;
	private String year;
	private String month;
	private int cate;
		
	public History() {
		super();
	}
	
	public History(String contents, String year, String month, int cate) {
		super();
		this.contents = contents;
		this.year = year;
		this.month = month;
		this.cate = cate;
	}
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
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
	
	public int getCate() {
		return cate;
	}
	
	public void setCate(int cate) {
		this.cate = cate;
	}

	@Override
	public String toString() {
		return "History [contents=" + contents + ", year=" + year + ", month=" + month + ", cate=" + cate + "]";
	}
	
}
