package com.socialcommunity.domain;

import com.socialcommunity.constants.Status;

public class UpdatePerson {
	private String userName;
	private Status updateStatus;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Status getUpdateStatus() {
		return updateStatus;
	}
	public void setUpdateStatus(Status updateStatus) {
		this.updateStatus = updateStatus;
	}
	
	

}
