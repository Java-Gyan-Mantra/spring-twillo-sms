package com.spring.twillo.sms.api.util;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import com.spring.twillo.sms.api.common.Constants;
import com.spring.twillo.sms.api.model.User;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.rest.api.v2010.account.MessageCreator;
import com.twilio.type.PhoneNumber;

@Component
@PropertySource(value = "classpath:sms.properties")
public class NotificationUtils {
	@Autowired
	private Environment env;

	public String sendSMS(User user) {
		Twilio.init(env.getProperty(Constants.ACCOUNT_SID),
				env.getProperty(Constants.AUTH_TOKEN));
		String otp=generateOTP();
		MessageCreator message = Message.creator(
				new PhoneNumber(user.getMobile()),
				new PhoneNumber(env.getProperty(Constants.TRIAL_NO)), "Hi "
						+ user.getFirstName()
						+ " your OTP to activate account : " +otp );
		message.create();
		return otp;
	}

	private String generateOTP() {
		return String.valueOf(new Random().nextInt(95509));
	}
}
