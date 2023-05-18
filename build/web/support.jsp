<!DOCTYPE html>
<html>
<head>
	<title>Contact Support</title>
    <style>
		body {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			min-height: 100vh;
            background-color:#cceeff;
		}

		#topnav {
            width: 100%;
            height: 45px;
            background-color: #cceeff;
            font-size: 17px;
            text-align: center;
            border-top: 2px solid #121111;
			border-bottom: 2px solid #121111;
            padding: 5;
        }
		  
		#topnav .centered {
			/*float: center; */
            display: inline-block;
        }
		
		#topnav .right {
          float: right;}
		 /* padding-right: ;}*/

		form {
            border: 2px solid #121111;
            padding: 20px;
            background-color: #c8dce7;
            margin-top: 20px;
            margin-bottom: 20px;}


        .alternate-bar{
           background-color: #72abc7;
           color: white;
           font-family: 'Inter', sans-serif;
           text-align: center;
           padding: 1px;
           position:relative;
           left: 0;
           bottom: 0;
           width: 100%;}
		

        .alternate-link {
          color: white;
          text-decoration:underline;
         }
        
	</style>
</head>
<body>
	<div id="topnav">
		<br>
		
			<div class="center" style=" width: 10%; float: left"><a href="main.jsp" target="main"> Main </a>
				<a href="index.jsp" target="main"> Index </a></div>
			<div class="right" style=" width : 10%; float: right"><a href="logout.html" target="main">Logout</a></div>
	
		</div>
		
	<img id="logo-button" src="Photos/IoTBayLogo.png" alt="Logo" style="width:200px;" onclick="window.location.href = 'index.html';" >
	<h1>Contact Support</h1>
	<p>Please fill out the form below to contact our support team:</p>
	<form action="submit-form.php" method="post">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required><br><br>

		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required><br><br>

        <label for="country">Country</label>
        <select id="country" name="country">
          <option value="australia">Australia</option>
          <option value="canada">Canada</option>
          <option value="usa">USA</option>
          <option value="usa">UK</option>
          <option value="usa">Other</option>
        </select><br><br>

		<label for="message">Message:</label>
		<textarea id="message" name="message" required></textarea><br><br>

		<input type="submit" value="Submit">
	</form>
    <h2>Alternatively, get in touch with us via either the email or phone number below:</h2>

	
	<div class="alternate-bar">
		<p>Alternately, get in touch with us via either the email or phone number below:</p>
		<a class="alternate-link" 
		 href="mailto:support@iotbay.com.au">support@iotbay.com.au</a>
		<br>
		 <a href="tel:+61426672018">(+61) 426672018</a>
	</div>

</body>
</html>
