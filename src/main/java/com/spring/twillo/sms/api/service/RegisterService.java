package com.spring.twillo.sms.api.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.twillo.sms.api.exception.OTPException;
import com.spring.twillo.sms.api.model.User;
import com.spring.twillo.sms.api.util.NotificationUtils;
import com.twilio.exception.ApiException;

@Service
public class RegisterService {
	@Autowired
	private NotificationUtils utils;

	public static List<String> otp;
	public static List<User> activeUser;
	static {
		otp = new ArrayList<>();
		activeUser = new ArrayList<>();
	}

	public String Register(User user) throws OTPException {
		try {
			otp.add(utils.sendSMS(user));
			activeUser.add(user);
		} catch (ApiException e) {
			throw new OTPException(
					"Internal Server issue Possible errro  Number may not contains country code or  May not Registered in Twillo ,click on Back button to Re-Registration");
		}
		return "Thanks for giving your details";
	}

	public User getActiveUser() {
		return activeUser.get(0);
	}
}
