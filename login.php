<div class="box">
	<div id="alertFail" style='display:none;'>
		<p align='center'>Invalid Username or Password. Please try again.</p>
	</div>
	<form action="loginMe.php" method="POST" id='loginForm'>
		<div class="row uniform 50%">
			<div class="12u">
				<input type="text" name="email" id="email" placeholder="Email">
			</div>
		</div>
		<div class="row uniform 50%">
			<div class="12u">
				<input type="password" name="password" id="password" placeholder="Password">
			</div>
		</div>
		<div class="row uniform">
			<div class="12u">
				<ul class="actions align-center">
					<li><input type="submit" value="Log In" /></li>
				</ul>
			</div>
		</div>
	</form>
	<a href="signup.php" class="actions" align='center'>Sign Up</a>
	<span style='float:right;'><a href="forgotpassword.php" class="actions" align='center'>Reset Password</a></span>
</div>

<script type='text/javascript'>
	$('#loginForm').submit(function (evt) {
	    evt.preventDefault();
	    $.ajax({             
			type: 'post',
			url: 'loginMe.php',
			data: $('#loginForm').serialize(),
			success: function (data) {
				console.log(data);
				if(data == "NO"){
					$("#alertFail").show();
				}else{
					//console.log(data);
					$("#alertFail").hide();
					location.reload();
				}
			}
		});
	});
</script>
