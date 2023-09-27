<a name="com{comment-id}"></a>
<div class="mx-3 mt-2 mb-2" id="{comment-id}"[best]style="box-shadow: rgb(116, 172, 232) 0px 0px 10px;overflow: hidden;border-radius: 8px;padding:10px"[/best] >
   <div class="d-flex flex-row bd-highlight ">
      <div class=" bd-highlight pt-1 me-1">[profile]<img src="{foto}" width="35" height="35" class="rounded-circle">
         [/profile]
      </div>
      <div class=" bd-highlight ms-2 td-none color-fix font-weight-bold ">
         [news-author]<span class="com-autor">[/news-author][profile] [fullname]  {fullname}[/fullname][not-fullname]{login}[/not-fullname][/profile][news-author]</span>[/news-author] <span class="group-icon" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Member">{group-icon}</span>
       <span class="ms-0">
           <!--
           <img src="{rank_img}" title="{rank}" style="width:45px"></img>
           -->

           <a href="#com{comment-id}"><svg xmlns="http://www.w3.org/2000/svg" data-bs-toggle="tooltip" data-bs-placement="top" title="" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" data-bs-original-title="link to comment" aria-label="link to comment" width="15" height="15" viewBox="0 0 20 28"><g fill="none" fill-rule="evenodd"><circle cx="18" cy="5" r="3"></circle><circle cx="6" cy="12" r="3"></circle><circle cx="18" cy="19" r="3"></circle><line x1="8.59" y1="13.51" x2="15.42" y2="17.49"></line><line x1="15.41" y1="6.51" x2="8.59" y2="10.49"></line></g></svg></a>
          </span><br><span class="com-text text-muted  d-lg-block" style="font-size:12px" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20z"/><path d="M19 6l-7 6V2.5"/></svg> <time datetime="{date=m-d-Y}T{date=H:i:s}" class="ago">{date=m-d-Y}</time></span>
      </div>
      <div class="bd-highlight ms-2 td-none color-fix font-weight-bold position-absolute end-0 pe-5 ">
         <div class=" text-dark com-login">
            
             [rating]
				<div class="rate_like-dislike">
					[rating-type-1]<div class="rate_stars">{rating} {mass-action}</div>[/rating-type-1]
					[rating-type-2]
					<div class="text-dark com-login">
					[rating-plus]
						 <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
               <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
            </svg>
						{rating} {mass-action}
					[/rating-plus] 
					</div>
					[/rating-type-2]
					[rating-type-3]
					<div class="text-dark com-login"><span class="like ">
						[rating-plus]
                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M18 15l-6-6-6 6"/>
                        </svg>[/rating-plus]</span>
						{rating}
						<span class="dislike ">
                            [rating-minus]
                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" data-bs-toggle="tooltip" data-bs-placement="top" title="Dislike" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M6 9l6 6 6-6"/>
                        </svg>[/rating-minus]</span> &nbsp;
					
                    {mass-action}
					</div>
					[/rating-type-3]
					[rating-type-4]
					<div class="rate_like-dislike">
						<span class="ratingtypeplusminus ignore-select">{likes}</span>
						[rating-plus]
               <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
                <path d="M12 19V6M5 12l7-7 7 7"/>
            </svg>
                       [/rating-plus]
						<span class="ratingtypeplusminus ignore-select">{dislikes}</span>
						[rating-minus]
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" data-bs-toggle="tooltip" data-bs-placement="top" title="Dislike" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
              <path d="M12 5v13M5 12l7 7 7-7"/>
            </svg>
                        [/rating-minus] &nbsp;
					
                    {mass-action}
                    
                    </div>
					[/rating-type-4]
				
             </div>
			[/rating]
           </div>
          
      </div>
   </div>
<style>
.positive{background:#91D289}
.negative{background:#D28989}
</style>
   <div class=" mt-2 img-com">
     
{comment}
[images]<div class="signature">--------------------</div><div class="clrfix">{images}</div>[/images]
         [available=lastcomments]
            <a href="{news-link}" >
               <svg xmlns="http://www.w3.org/2000/svg" class="me-3" width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                  <path d="M17 2.1l4 4-4 4"/>
                  <path d="M3 12.2v-2a4 4 0 0 1 4-4h12.8M7 21.9l-4-4 4-4"/>
                  <path d="M21 11.8v2a4 4 0 0 1-4 4H4.2"/>
               </svg>
               {news-title}
            </a>
            [/available]
         
      
      [not-available=lastcomments]
      <div class="d-flex flex-row bd-highlight " style="margin-top:3px;">
          <div class=" bd-highlight td-none com-login">[reply] Reply [/reply] </div>
         <div class=" bd-highlight td-none com-login ms-2">[fast] Quote [/fast] </div>
         [not-group=5] 
         <div class=" bd-highlight td-none com-login ms-2">
            
               <a href="#" class="text-muted td-none" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" stroke="#656565" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                     <circle cx="12" cy="12" r="1"></circle>
                     <circle cx="19" cy="12" r="1"></circle>
                     <circle cx="5" cy="12" r="1"></circle>
                  </svg>
               </a>
               <ul class="dropdown-menu shadow block" aria-labelledby="dropdownMenuButton1">
              <li><span class="dropdown-item" >[spam] Spam [/spam] </span></li>
                   <li><span class="dropdown-item" >[com-edit] Edit [/com-edit]</span></li>
                  <li><span class="dropdown-item" >[complaint] Complaint [/complaint]</span></li>
                  <li><span class="dropdown-item" href="#">[com-del] Delete [/com-del]</span></li>
                  <li><span class="dropdown-item" >[add-best]Make best[/add-best] [dell-best]Remove best[/dell-best]</span></li>
               </ul>
           
         </div>
         [/not-group]
      </div>
      [/not-available]
   </div>
   [available=lastcomments]
    
   <hr >
   [/available] 
</div>