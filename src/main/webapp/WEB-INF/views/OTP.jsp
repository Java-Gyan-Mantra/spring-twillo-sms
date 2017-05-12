<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style type="text/css">
button {
	background-color: blue;
	border: none;
	color: white;
	padding: 15px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

table {
	border-spacing: 0px 10px;
}

#otpRow {
	display: block;
	margin-left: 6%;
}

#veryfyotp {
	width: 300px;
}
</style>
</head>
<body>
	<div align="center">
		<h2 style="color: red; font-weight: bold;font-size: 20px;" align="center">${error}</h2>
		<input action="action" onclick="history.go(-1);" type="image"
			src="./images/back.png" border="0" alt="Submit" height="60px"
			width="100px" align="left"/>
	</div>
	<div align="center">
		<div>
			<div>
				<br> <img
					src="https://cdn2.iconfinder.com/data/icons/luchesa-part-3/128/SMS-512.png"
					class="img-responsive"
					style="width: 200px; height: 200px; margin: 0 auto;"><br>

				<h1>Verify your mobile number</h1>
				<table style="text-align: center;">
					<tr id="otpRow">
						<td style="text-align: left;">
							<form method="post" id="veryfyotp" action="/VerifyOTP">
								<div>
									<div>
										<span style="color: red;"></span> <input style="height: 40px;"
											type="text" name="otp" placeholder="Enter your OTP number"
											required="">
										<button type="submit">Verify</button>
									</div>
								</div>
							</form>
						</td>
						<td>
							<form action="/resendOTP">
								<input type="image" name="submit" src="./images/resend.jpg"
									border="0" alt="Submit" height="60px" width="100px" />
								<p>RESEND OTP</p>
							</form>
						</td>
					</tr>
				</table>
				<p style="color: navy; font-size: 20px; font-weight: bold;"
					align="center">
					An OTP has been sent to your Mobile Number. <br>Please enter
					the 4 digit OTP below for Successful Registration
				</p>
				<p style="color: red;">
					<b>${msg1}</b>
				</p>
			</div>
		</div>
	</div>
</body>
</html>