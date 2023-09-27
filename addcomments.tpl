<p><hr class="mb-1 mt-3"></p>
<div class="box mx-3 mb-3">
	<div id="addcomment">
		<div class="box_in">
          			<ul class="ui-form">
			[not-logged]
				<li class="form-group combo">
					<div class="combo_field"><input placeholder="Your Name" type="text" name="name" id="name" class="form-control mb-2" required></div>
					<div class="combo_field"><input placeholder="Your e-mail" type="email" name="mail" id="mail" class="form-control mb-2"></div>
				</li>
			[/not-logged]
				<li id="comment-editor">{editor}</li>
			[recaptcha]
				<li>{recaptcha}</li>
			[/recaptcha]
			[question]
				<li class="form-group">
					<label for="question_answer">{question}</label>
					<input placeholder="Answer" style="width:150px;" type="text" name="question_answer" id="question_answer" class="form-control" required>
				</li>
			[/question]
			</ul>
			<div class="form_submit">
			[sec_code]
				<div class="c-captcha">
					{sec_code}
					<input class="form-control" style="width:150px;" placeholder="Repeat code" title="Enter the code shown in the picture" type="text" name="sec_code" id="sec_code" required>
				</div>
			[/sec_code]
				<button class="btn btn-dark mt-2" type="submit" name="submit" title="Submit Comment"><b>Submit</b></button>
			</div>
		</div>
	</div>
</div>