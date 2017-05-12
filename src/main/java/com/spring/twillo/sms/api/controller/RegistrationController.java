/**
 * 
 */
package com.spring.twillo.sms.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.twillo.sms.api.exception.OTPException;
import com.spring.twillo.sms.api.model.User;
import com.spring.twillo.sms.api.service.RegisterService;

/**
 * @author BASANTA
 *
 */
@Controller
public class RegistrationController {
	@Autowired
	private RegisterService service;

	@RequestMapping(value = "/view")
	public String viewRegistration() {
		return "register";
	}

	@RequestMapping(value = "/register")
	public String register(@ModelAttribute("user") User user, Model model)
			throws OTPException {
		String message = service.Register(user);
		model.addAttribute("message", message);
		model.addAttribute("user", user);
		return "OTP";
	}

	@RequestMapping(value = "/VerifyOTP")
	public String verifyOTP(@RequestParam("otp") String code, Model model) {
		String msg = "";
		String msg1 = "";
		boolean isVerified = RegisterService.otp.stream().anyMatch(
				o -> o.equals(code));
		System.out.println(code);
		System.out.println(RegisterService.otp.get(0));
		if (isVerified) {
			msg = "Verified Successfully";
			model.addAttribute("msg", msg);
			return "facebook";
		} else {
			msg1 = "Invalid OTP Re-Try";
			model.addAttribute("msg1", msg1);
			return "OTP";
		}

	}

	@RequestMapping(value = "/resendOTP")
	public String resendOTP(Model model) throws OTPException {
		User active = service.getActiveUser();
		service.Register(active);
		return "OTP";
	}
}
