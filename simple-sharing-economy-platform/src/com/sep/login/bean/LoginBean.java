package com.sep.login.bean;

public class LoginBean {
    private static final long serialVersionUID = 1L;
    private String userCategory;
    private String userId;
    private String password;

   
    public String getUserCategory() {
		return userCategory;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserCategory(String userCategory) {
		this.userCategory = userCategory;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
