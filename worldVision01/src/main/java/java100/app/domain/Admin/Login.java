package java100.app.domain.Admin;

public class Login {
    int loginNo;
    String id;
    String password;
    public int getLoginNo() {
        return loginNo;
    }
    public void setLoginNo(int loginNo) {
        this.loginNo = loginNo;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    @Override
    public String toString() {
        return "Login [loginNo=" + loginNo + ", id=" + id + ", password=" + password + "]";
    }
    
    
}
