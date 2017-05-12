package com.spring.twillo.sms.api.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.ModelAndView;
import com.spring.twillo.sms.api.exception.OTPException;

@ControllerAdvice
public class ExceptionHandler {
	@org.springframework.web.bind.annotation.ExceptionHandler
	public ModelAndView mapper(OTPException otp) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("OTP");
		mav.addObject("error", otp.getLocalizedMessage());
		return mav;
	}
}
