package com.csc.dashboard.domain;

import java.io.Serializable;

public class UserInfoVO implements Serializable {

	public int no;
	public String name;
	public String subject;
	public String content;
	public String ip;
	public Boolean enabled = true;
}
