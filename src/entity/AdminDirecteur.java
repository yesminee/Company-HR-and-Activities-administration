package entity;

public class AdminDirecteur {
	private int code;
	private String Login;
	private String password;
	private String type;
	
	
	public void setCode(int code) {
		this.code = code;
	}
	
	public int getCode() {
		return code;
	}
	public String getLogin() {
		return Login;
	}
	public void setLogin(String login) {
		Login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	
}
