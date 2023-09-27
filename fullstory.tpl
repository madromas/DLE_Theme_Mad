<!-- MadWay.net full story view -->
<meta name="og:description" content="{full-story limit='200'}" />
<div class="fullstory-width mx-auto px-lg-3 card mb-2">
   <div class="card-body mt-1">
      <nav class="nav w-100" style="margin-left:-10px;">
        
         [profile]<span class="nav-link card-title fw-bold"><img class="rounded-circle me-2 mb-1" width="23" height="23" src="{avatar}" /> {login}</span> [/profile]
         <span class="nav-link d-none d-lg-block" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20z"/><path d="M19 6l-7 6V2.5"/></svg> <time datetime="{date=Y-m-d}T{date=H:i:s}" class="ago"> {date=Y-m-d}</time></span>
       <span class="nav-link d-xl-none">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M14 16l6-6-6-6"/><path d="M4 21v-7a4 4 0 0 1 4-4h11"/></svg>
          </span>
          <a class="nav-link fw-bold" href="{category-url}"><img src="{category-icon}" class="rounded-circle me-2 mb-1" width="23" height="23">{category}</a>
          <div class="position-absolute end-0 pe-3 pt-1"  >
              
            [fixed] 
            <svg xmlns="http://www.w3.org/2000/svg" data-bs-toggle="tooltip" data-bs-placement="top" title="Post pinned" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#ffc107" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M21.44 11.05l-9.19 9.19a6 6 0 0 1-8.49-8.49l9.19-9.19a4 4 0 0 1 5.66 5.66l-9.2 9.19a2 2 0 0 1-2.83-2.83l8.49-8.48"></path>
            </svg>
            [/fixed]
             
             [print-link]
             <span class="card-title"><svg xmlns="http://www.w3.org/2000/svg" data-bs-toggle="tooltip" data-bs-placement="top" title="Print view" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
              <polyline points="6 9 6 2 18 2 18 9"></polyline><path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path><rect x="6" y="14" width="12" height="8"></rect>
            </svg>&nbsp;</span>
             [/print-link]
             
             [complaint] 
            <span class="card-title"><svg xmlns="http://www.w3.org/2000/svg" data-bs-toggle="tooltip" data-bs-placement="top" title="Complain about a material" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <circle cx="12" cy="12" r="10"></circle>
               <line x1="12" y1="8" x2="12" y2="12"></line>
               <line x1="12" y1="16" x2="12.01" y2="16"></line>
            </svg></span>
            [/complaint]
             
             
            [edit]          
            <svg xmlns="http://www.w3.org/2000/svg" class="fix-btn fix-btn-dark ms-2" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <circle cx="12" cy="12" r="1"></circle>
               <circle cx="19" cy="12" r="1"></circle>
               <circle cx="5" cy="12" r="1"></circle>
            </svg>
            [/edit]
         </div>
      </nav>
      <h4 class="title fw-bold mt-1">{title}</h4>
      <div class="card-text mb-3 img-fix">
           {include file="foto.tpl"}
           {full-story}
          
          {poll}
         <br>
		 
		
          [tags]
         <div class="tags-cloud" data-bs-toggle="tooltip" data-bs-placement="top">
            <span clas="text-muted" style="font-size:13px;color: #6c757d !important;">{tags}
                   </span>
          </div>
        
          [/tags]
          
         [edit-date]
         <div class="my-2 bg-general block p-3 my-4">
            <div>Post <b>edited</b> {editor} {edit-date}</div>
            <b>Reason:</b>   {edit-reason} 
         </div>
         [/edit-date]
      </div>
      
      <div class="d-flex mb-2 bd-highlight">
      <div class="ms-2 bd-highlight like">
           
            [rating]
				<div class="rate">
					[rating-type-1]<div class="rate_stars">{rating}</div>[/rating-type-1]
					[rating-type-2]
					<div class="rate_like">
					[rating-plus]
						 <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
               <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
            </svg> 
                        <span style="font-size:13px;">{rating}</span>
					[/rating-plus]
					</div>
					[/rating-type-2]
					[rating-type-3]
					<div class="rate_like-dislike">
                    <span class="like ">
						[rating-plus]
                        

                       <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M18 15l-6-6-6 6"/>
                        </svg>[/rating-plus]</span>
						{rating}<span class="dislike ">
						[rating-minus]
                        <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" data-bs-toggle="tooltip" data-bs-placement="top" title="Dislike" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M6 9l6 6 6-6"/>
            </svg>
                      [/rating-minus]
                        </span></div>
					[/rating-type-3]
					[rating-type-4]
					<div class="rate_like-dislike">
						<span class="like ignore-select">{likes}
						[rating-plus]
               <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
                <path d="M12 19V6M5 12l7-7 7 7"/>
            </svg>
                            [/rating-plus]</span>
						<span class="dislike ignore-select">{dislikes}
						[rating-minus]
                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" data-bs-toggle="tooltip" data-bs-placement="top" title="Dislike" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
              <path d="M12 5v13M5 12l7 7 7-7"/>
            </svg>
                        [/rating-minus]</span>
					</div>
					[/rating-type-4]
				</div>
			[/rating]
         </div>
          
         <div class="bd-highlight ms-4">
            [com-link] 
            <div class="card-title" data-bs-toggle="tooltip" data-bs-placement="top" title="Comments">
               <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
                  <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
               </svg>
               <span class="align-bottom ms-2" title="Discuss">[not-comments]  [/not-comments][comments] {comments-num} [/comments]</span>
            </div>
            [/com-link]  
         </div>
		 
		
		 
         <div class="bd-highlight ms-4">
            [add-favorites]  
            <div class="card-title" data-bs-toggle="tooltip" data-bs-placement="top" title="Add to bookmarks">
               <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                  <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
               </svg>
            </div>
            [/add-favorites] 
            [del-favorites] 
            <div data-bs-toggle="tooltip" data-bs-placement="top" title="Remove from bookmarks">
               <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#ff0000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                 <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path>
               </svg>
            </div>
            [/del-favorites]
         </div>
         <div class="bd-highlight ms-5 link-muted" >
          
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
               <circle cx="12" cy="12" r="3"></circle>
            </svg>
            <span class="ms-2 me-3" style="font-size:13px;">{views}</span>
         
         </div>
          <!-- Desktop View -->
          <div class="ms-auto bd-highlight d-none d-lg-block">
            <script src="https://yastatic.net/share2/share.js"></script>
          <div class="ya-share2" data-limit="4" data-bs-toggle="tooltip" data-lang="en" data-bs-placement="top" title="Share" data-curtain data-shape="round" data-size="s" data-services="reddit,pinterest,twitter,tumblr,digg,blogger,skype,delicious,whatsapp"> </div>       
          </div>
          
          <!-- Mobile View -->
          <div class="ms-auto bd-highlight d-xl-none">
            <script src="https://yastatic.net/share2/share.js"></script>
          <div class="ya-share2" data-limit="0" data-bs-toggle="tooltip" data-lang="en" data-bs-placement="top" title="Share" data-curtain data-shape="round" data-size="s" data-services="reddit,pinterest,twitter,tumblr,digg,blogger,skype,delicious,whatsapp"> </div>       
         </div>
          
        </div>
      
       
   </div>
</div>

<div class="fullstory-width mx-auto mb-4 block" >
{include file="engine/lazydev/dle_emote_lite/index.php"}
</div>

<!--
<div class="mb-3" style="text-align:center;">
	<p>	<strong>Did you find an error or a dead link?</strong><br>
Select the problematic fragment with the mouse and press CTRL +ENTER.</p>
	</div>

<div class="fullstory-width mx-auto mb-4 block" >
   <span class="nav-more"  title="Previous page">
      [prev-url]<a class="card-title" href="{prev-url}" >Prev</a>[/prev-url]
   </span>
   <span class="nav-more right" title="Next page">
      [next-url]<a class="card-title" href="{next-url}" >Next</a>[/next-url]
   </span><br>
</div>
-->

<div class="fullstory-width mx-auto px-lg-5 card mb-4">
   <div class="px-5 pt-4 fs-5  font-weight-bold "><b>{comments-num} [declination={comments-num}]comment|s|[/declination]</b></div>
   <div class="d-flex flex-row bd-highlight ">
      <div class="ms-5  lineblue mt-4 bd-highlight"><b>Latest</b></div>
      <div class="ms-4  mt-4 bd-highlight td-none ">
        
      </div>
      <div class="ms-4  mt-4 bd-highlight td-none position-absolute end-0 me-5">
         [comments-subscribe] 
         <svg xmlns="http://www.w3.org/2000/svg" class="fix-btn fix-btn-dark" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" data-bs-toggle="tooltip" data-bs-placement="left" title=" Subscribe to comments">
            <path d="M22 17H2a3 3 0 0 0 3-3V9a7 7 0 0 1 14 0v5a3 3 0 0 0 3 3zm-8.27 4a2 2 0 0 1-3.46 0"></path>
         </svg>
         [/comments-subscribe]  
      </div>
   </div>
    <div  id="collapseExampleee">
      {addcomments}
        
   </div>
   <hr style="height:1px;color:#4c535e;" >
   [not-comments] 
    <div class="mt-4 mb-5 mx-auto"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#16a34a" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg> No comments yet. Be the first!</div>
   [/not-comments]
   {comments}
    
    [not-allow-comm]
    <div class="mt-4 mb-5 mx-auto">Comments are disabled by the author.</div>
    [/not-allow-comm]
</div>

[related-news]
<div class="row mb-4 fullstory-width mx-auto">
<div class="col-12 mt-4"><h5>Related topics</h5></div>
{related-news}
</div>
[/related-news]

<script>
function BestComments(a, b, c) {
    if (c == 1) {
        text = "Remove this comment from best?";
    } else {
        text = "Make this comment best?";
    }
    DLEconfirm(text, dle_confirm, function() {
        ShowLoading("");
        $.post(dle_root + "engine/ajax/controller.php?mod=commsort", {
            id: a,
            post_id: b,
            dell_comm: c,
            user_hash: dle_login_hash
        }, function(data) {
            HideLoading("");
            $("#content").load(window.location.href + " #content");
            DLEalert(data, dle_info);
        })
    })
}
</script>

