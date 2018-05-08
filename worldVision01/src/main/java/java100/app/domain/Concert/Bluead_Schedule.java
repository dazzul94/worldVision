package java100.app.domain.Concert;

public class Bluead_Schedule {
	int no;
	int y;
	int m;
	int d;
	String subject;
	String color;
	String content;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public int getM() {
		return m;
	}
	public void setM(int m) {
		this.m = m;
	}
	public int getD() {
		return d;
	}
	public void setD(int d) {
		this.d = d;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Bluead_Schedule [no=" + no + ", y=" + y + ", m=" + m + ", d=" + d + ", subject=" + subject + ", color="
				+ color + ", content=" + content + "]";
	}
	
}
