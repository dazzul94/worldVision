package java100.app.domain.Admin;

public class Login {
    int admin_no;
    String admin_id;
    String admin_pass;
    String admin_email;
    String admin_icon;
    String admin_view;
    String admin_level;
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pass() {
		return admin_pass;
	}
	public void setAdmin_pass(String admin_pass) {
		this.admin_pass = admin_pass;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_icon() {
		return admin_icon;
	}
	public void setAdmin_icon(String admin_icon) {
		this.admin_icon = admin_icon;
	}
	public String getAdmin_view() {
		return admin_view;
	}
	public void setAdmin_view(String admin_view) {
		this.admin_view = admin_view;
	}
	public String getAdmin_level() {
		return admin_level;
	}
	public void setAdmin_level(String admin_level) {
		this.admin_level = admin_level;
	}
	@Override
	public String toString() {
		return "Login [admin_no=" + admin_no + ", admin_id=" + admin_id + ", admin_pass=" + admin_pass
				+ ", admin_email=" + admin_email + ", admin_icon=" + admin_icon + ", admin_view=" + admin_view
				+ ", admin_level=" + admin_level + "]";
	}
}
