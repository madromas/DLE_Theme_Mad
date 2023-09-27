<div class=" px-5 card fullstory-width mx-auto mb-4">
   <div class="card-body">
      <h4 class="fw-bold  mt-2">Add post</h4>
      <div class="form-group row mt-3">
         <label for="title" class="col-sm-3 col-form-label imp">Title</label>
         <div class="col-sm-9">	<input type="text" name="title" id="title" value="{title}" class="form-control " required>
         </div>
      </div>
      <div class="form-group row mt-3">
	
         <label for="category" class="col-sm-3 col-form-label imp">Category</label>
         <div class="col-sm-9">
            {category}
         </div>
      </div>
      <div class="addform">
         <ul class="ui-form">
            <li class="form-group">
               <label><a href="#"  class="btn btn-dark card-title" onclick="$('.addvote').toggle();return false;">Add poll</a></label>
            </li>
            <li class="form-group addvote" style="display:none;">
               <label for="vote_title" class="col-sm-3 col-form-label imp">Poll name</label>
               <input type="text" name="vote_title" value="{votetitle}" class="form-control"/>
            </li>
            <li class="form-group addvote" style="display:none;">
               <label for="frage" >Question</label>
               <input type="text" name="frage" value="{frage}" class="form-control" />
            </li>
            <li class="form-group addvote" style="display:none;">
               <label for="vote_body" >Answers list</label>
               <textarea name="vote_body" rows="5" class="form-control" placeholder="Each new line is a new answer">{votebody}</textarea><br /><label><input type="checkbox" name="allow_m_vote" value="1" {allowmvote}> Allow multiple selections</label>
            </li>
            <li class="form-group">
               <label for="short_story" class="imp">Topic Description</label>
               [not-wysywyg]
               <div class="bb-editor">
                  {bbcode}
                  <textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="10" class="wide" required>{short-story}</textarea>
               </div>
               [/not-wysywyg]
               {shortarea}
            </li>
             
            <li class="form-group">
               <table style="width:100%">
                  {xfields}
               </table>
            </li>
            <li class="form-group">
               <label for="alt_name">Keywords:</label>
               <input placeholder="Enter separated by commas" type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" class="form-control">
            </li>
            <li class="form-group">
               <div class="admin_checkboxs">{admintag}</div>
            </li>
            [recaptcha]
            <li class="form-group">{recaptcha}</li>
            [/recaptcha]
            [question]
            <li class="form-group">
               <label for="question_answer">{question}</label>
               <input placeholder="Enter answer" type="text" name="question_answer" id="question_answer" class="wide" required>
            </li>
            [/question]
         </ul>
         <p style="margin: 20px 0 0 0;" class="grey"><span style="color: #e85319">*</span> — fields marked with an asterisk are required.</p>
         <div class="form_submit">
            [sec_code]
            <div class="c-captcha">
               {sec_code}
               <input placeholder="Enter code" title="Enter the code shown in the picture" type="text" name="sec_code" id="sec_code" required>
            </div>
            [/sec_code]
            <button class="btn btn-success" type="submit" name="add"><b>Create</b></button>
            <button class="btn btn-outline-dark btn-border" onclick="preview()" type="submit" name="nview"><b>Preview</b></button>
         </div>
      </div>
   </div>
</div>