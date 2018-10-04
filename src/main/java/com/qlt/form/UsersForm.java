package com.qlt.form;

public class UsersForm {
	private String username;
	private String password;

	public String getUserName() {
		return username;
	}

	public void setUserName(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UsersForm() {
		super();
	}

	public UsersForm(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	@Override
	public String toString() {
		return "UsersForm [userName=" + username + ", password=" + password + "]";
	}

}
