<div class="card main-width mx-auto card-body">
   <h4 class="mb-3 fw-bold">Password recovery</h4>
   <div class="page_form__form">
      <ul class="ui-form">
         <li class="form-group">
            <div class="form-floating">
               <input type="text" class="form-control" name="lostname" id="lostname" required>
               <label for="lostname">Username or E-mail</label>
            </div>
         </li>
         [sec_code]
         <li class="form-group">
            <div class="c-captcha">
               {code}
               <input class="form-control" placeholder="Repeat code" title="Enter the code shown in the picture" type="text" name="sec_code" id="sec_code" required>
            </div>
         </li>
         [/sec_code]
         [recaptcha]
         <li>{recaptcha}</li>
         [/recaptcha]
      </ul>
      <div class="form_submit">
         <button class="btn btn-dark" name="submit" type="submit">Recover</button>
      </div>
   </div>
</div>