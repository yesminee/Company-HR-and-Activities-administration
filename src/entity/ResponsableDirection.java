package entity;

public class ResponsableDirection {
	private int code;
	private String Login;
	private String password;
	private int codeDirection;
	
	public int getCodeDirection() {
		return codeDirection;
	}

	public void setCodeDirection(int codeDirection) {
		this.codeDirection = codeDirection;
	}

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
	
}
