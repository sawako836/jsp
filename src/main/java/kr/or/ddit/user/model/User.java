package kr.or.ddit.user.model;

public class User {
	private String userNm;		// 사용자 이름
	private String userId;			// 사용자 아이디
	private String pass;			// 사용자 비밀번호

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	 public User(String userName) { // alt + shift + R 이름 동시에 바꾸기 
		 this.userNm = userName; }
	
	 public String getUserName() { return userNm; }
	
	 public void setUserName(String userName) { this.userNm = userName; }
	

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
		return "UserVo [userNm=" + userNm + ", userId=" + userId + ", pass=" + pass + "]";
	}
	
	public boolean checkLoginValidate(String userId, String pass) {
		if(userId.equals(this.userId) && pass.equals(this.pass))
			return true;
		
		return false;
	}

}
