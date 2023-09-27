<div class="card p-4 fullstory-width mx-auto">
   <div class="box_in">
      <h4 class="fw-bold mb-5">Personal messages</h4>
      <div class="pm-box">
         <nav id="pm-menu">
            [inbox]<button type="button" class="btn btn-dark">Inbox</button>[/inbox]
            [outbox]<button type="button" class="btn btn-outline-dark btn-border ms-2">Sent</button>[/outbox]
            [new_pm]<button type="button" class="btn btn-outline-dark btn-border ms-2">Send message</button>[/new_pm]
         </nav>
         <div class="pm_status">
            {pm-progress-bar}
            {proc-pm-limit} % / ({pm-limit} messages)
         </div>
      </div>
      [pmlist]
      <div class="pmlist">
         {pmlist}
      </div>
      [/pmlist]
      [newpm]
      <h4 class="heading mb-3">Create massage</h4>
      <div class="addform addpm">
         <ul class="ui-form">
            <li class="form-group combo">
               <div class="combo_field">
                  <input placeholder="Name of recipient" type="text" name="name" value="{author}" class="form-control" required>
               </div>
               <div class="combo_field">
                  <input placeholder="Message subject" type="text" name="subj" value="{subj}" class="form-control" required>
               </div>
            </li>
            <li id="comment-editor">{editor}</li>
            <li><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">Save the message in the "Sent Items" folder</label></li>
            [recaptcha]
            <li>{recaptcha}</li>
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
               {sec_code}
               <input placeholder="Repeat code" title="Enter code shown in image" type="text" name="sec_code" id="sec_code" required>
            </div>
            [/sec_code]
            <button class="btn btn-dark" type="submit" name="add"><b>Send</b></button>
            <button class="btn btn-outline-dark btn-border" type="button" onclick="dlePMPreview()">Preview</button>
         </div>
      </div>
      [/newpm]
   </div>
   [readpm]
   <div class=" mt-2 mb-3" id="{comment-id}">
      <div class="d-flex flex-row bd-highlight ">
         <div class=" bd-highlight pt-1"><img src="{foto}" width="35px" height="35px" class="rounded-circle">
         </div>
         <div class=" bd-highlight ms-2 td-none color-fix font-weight-bold ">
            <span class="com-autor fw-bold">{author}</span> <span class="group-icon" data-bs-toggle="tooltip" data-bs-placement="top" title="Profile verified">{group-icon}</span>
            <span class=" bd-highlight ms-2 td-none com-login ">@{author}</span>
             <div class="text-muted" style="font-size:12px"><svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20z"></path><path d="M19 6l-7 6V2.5"></path></svg> {date}</div>
         </div>
        
      </div>
   </div>
   <div class="mt-1">
      <h5 >{subj}</h5>
      <div class="mt-2">{text}</div>
      <div class="d-flex flex-row bd-highlight mt-2">
         <div class=" bd-highlight td-none com-login">[reply] Reply [/reply] </div>
         <div class=" bd-highlight td-none com-login ms-2">[ignore] Ignore [ignore] </div>
         <div class=" bd-highlight td-none com-login ms-2">
            <span class="dropup ms-1">
               <a href="#" class="text-muted td-none " type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" stroke="#656565" height="24" viewBox="0 0 24 24" fill="none" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                     <circle cx="12" cy="12" r="1"></circle>
                     <circle cx="19" cy="12" r="1"></circle>
                     <circle cx="5" cy="12" r="1"></circle>
                  </svg>
               </a>
               <ul class="dropdown-menu shadow block" aria-labelledby="dropdownMenuButton1">
                  <li><span class="dropdown-item" >[complaint] Complain [/complaint]</span></li>
                  <li><span class="dropdown-item" href="#">[del] Delete [/del]</span></li>
               </ul>
            </span>
         </div>
      </div>
   </div>
   [/readpm]
</div>