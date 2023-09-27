<div class="card main-width mx-auto card-body mb-5">
	<h4 class="fw-bold">
		[registration]Registration[/registration]
		[validation]Continuation of registration[/validation]
	</h4>
	<div class="page_form__form">
		<div class="regtext">
		[registration]
			Registration on our site will allow you to be its full member.
You can add news to the site, leave your comments, view hidden text and much more.
			<br>If you have problems with registration, please contact site <a href="/index.php?do=feedback">administrator</a>.
		[/registration]
		[validation]
			Horray! Your account has been registered,
			however, information about you is incomplete, so you MUST complete the additional fields in your profile.<br>
		[/validation]
		</div>
		<ul class="ui-form">
		[registration]
			<li class="form-group mt-3">
				<label for="name">Login</label>
				<div class="login_check">
					<input type="text" name="name" id="name" class="form-control" required>
					<button class="btn btn-dark btn-sm mt-3" title="Check" onclick="CheckLogin(); return false;">Check</button>
				</div>
				<div id="result-registration"></div>
			</li>
			<li class="form-group">
				<label for="password1">Password</label>
				<input type="password" name="password1" id="password1" class="form-control" required>
			</li>
			<li class="form-group">
				<label for="password2">Repeat password</label>
				<input type="password" name="password2" id="password2" class="form-control" required>
			</li>
			<li class="form-group">
				<label for="email">E-mail</label>
				<input type="email" name="email" id="email" class="form-control" required>
			</li>
		[question]
			<li class="form-group">
				<label for="question_answer">{question}</label>
				<input placeholder="Enter answer" type="text" name="question_answer" id="question_answer" class="wide" required>
			</li>
		[/question]
		[sec_code]
			<li class="form-group">
				<div class="c-captcha">
					{reg_code}
					<input class="form-control" style="width:150px;" placeholder="Repeat code" title="Enter the code shown in the picture" type="text" name="sec_code" id="sec_code" required>
				</div>
			</li>
		[/sec_code]
		[recaptcha]
			<li>{recaptcha}</li>
		[/recaptcha]
		[/registration]
		[validation]
			<li class="form-group">
				<label for="fullname">Your name</label>
				<input type="text" id="fullname" name="fullname" class="form-control">
			</li>
			<li class="form-group">
				<label for="land">Location</label>
				<input type="text" id="land" name="land" class="form-control">
			</li>
			<li class="form-group">
				<label for="image">About</label>
				<textarea id="info" name="info" rows="5" class="form-control"></textarea>
			</li>
			<li class="form-group">
				<label for="image">Avatar</label>
				<input type="file" id="image" name="image" class="form-control">
			</li>
			<li class="form-group">
				<table class="xfields">
					{xfields}
				</table>
			</li>
		[/validation]
		</ul>
        <div>
             I agree to <a  href="/terms.html" >Terms</a> and 
        <a  href="/privacy.html">Privacy</a>
        </div>
		<div class="form_submit">
			<button class="btn btn-success" name="submit" type="submit">Register</button>
		</div>
	</div>
</div>