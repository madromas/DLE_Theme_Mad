<div class="fullstory-width mx-auto card p-5">

    <h3 class="mb-3">Contact Us</h3>
   <div class="mt-3">

      <ul class="ui-form">
         [not-logged]
         <li class="form-group combo">
            <div class="combo_field"><input placeholder="Your Name" type="text" maxlength="35" name="name" id="name" class="form-control" required></div>
            <div class="combo_field"><input placeholder="Your E-mail" type="email" maxlength="35" name="email" id="email" class="form-control" required></div>
         </li>
         [/not-logged]
         <li class="form-group">
            <input placeholder="Message subject" type="text" maxlength="45" name="subject" id="subject" class="form-control" required>
         </li>
         <li class="form-group">
            <label>Recipient</label>
            {recipient}
         </li>
         <li class="form-group">
            <textarea placeholder="Message" name="message" id="message" rows="8" class="form-control" required></textarea>
         </li>
         [attachments]
         <li class="form-group">
            <label for="question_answer" class="form-label">Attach files</label>
            <input class="form-control" name="attachments[]" type="file" multiple>
         </li>
         [/attachments]
         [recaptcha]
         <li class="form-group">{recaptcha}</li>
         [/recaptcha]
         [question]
         <li class="form-group">
            <label for="question_answer">Question: {question}</label>
            <input placeholder="Answer" type="text" name="question_answer" id="question_answer" class="wide" required>
         </li>
         [/question]
      </ul>
      <div class="form_submit">
         [sec_code]
         <div class="c-captcha">
            {code}
            <input class="form-control" placeholder="Repeat code" title="Enter the code shown in the picture" type="text" name="sec_code" id="sec_code" required>
         </div>
         [/sec_code]
         <button class="btn btn-dark" type="submit" name="send_btn"><b>Send a message</b></button>
      </div>
   </div>
</div>