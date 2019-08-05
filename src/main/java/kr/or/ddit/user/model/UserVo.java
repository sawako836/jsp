package kr.or.ddit.user.model;

public class UserVo {
	private String userName;		// 사용자 이름
	private String userId;			// 사용자 아이디
	private String pass;			// 사용자 비밀번호

	public UserVo() {
		// TODO Auto-generated constructor stub
	}
	
	 public UserVo(String userName) { // alt + shift + R 이름 동시에 바꾸기 
		 this.userName = userName; }
	
	 public String getUserName() { return userName; }
	
	 public void setUserName(String userName) { this.userName = userName; }
	

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "UserVo [userName=" + userName + ", userId=" + userId + ", pass=" + pass + "]";
	}

}
