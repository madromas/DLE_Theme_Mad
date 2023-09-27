 <article class=" wow animate__animated animate__fadeIn">
<div class="[xfvalue_panel] card mb-3 mx-auto card-hover main-width">
   <div class="px-3 pt-3 ">
        [fixed] <p class="pb-2"><span class="fixed_label_pinned">
           <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
               <path d="M21.44 11.05l-9.19 9.19a6 6 0 0 1-8.49-8.49l9.19-9.19a4 4 0 0 1 5.66 5.66l-9.2 9.19a2 2 0 0 1-2.83-2.83l8.49-8.48"></path>
            </svg> Pinned
           </span> </p>[/fixed]
      <nav class="nav w-100" style="margin-left:-10px;">
         
        [profile]  <span class="nav-link card-title fw-bold" ><img class="rounded-circle me-2 mb-1" width="23" height="23" src="{avatar}" />{login}</span> [/profile] 
         <span class="nav-link d-none d-lg-block"><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20z"/><path d="M19 6l-7 6V2.5"/></svg> <time datetime="{date=Y-m-d}T{date=H:i:s}" class="ago">{date=Y-m-d}</time></span>
          <span class="nav-link d-xl-none">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M14 16l6-6-6-6"/><path d="M4 21v-7a4 4 0 0 1 4-4h11"/></svg>
          </span>
          <a class="nav-link fw-bold " href="{category-url}"><img src="{category-icon}" class="rounded-circle me-2 mb-1" width="23" height="23">{category}</a> 
          
          <div class="position-absolute end-0 pe-3 pt-1"  >
             <!--
{include file="engine/modules/statnew.php?datenews={date=Ymd}"}
             -->
              
              
               <a href="/@{login}/news/"  data-bs-toggle="tooltip" data-bs-placement="top" title="All the articles of {login}">
                   <svg xmlns="http://www.w3.org/2000/svg"  class="fix-btn fix-btn-dark ms-2" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                     <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                     <circle cx="8.5" cy="7" r="4"></circle>
                     <line x1="20" y1="8" x2="20" y2="14"></line>
                     <line x1="23" y1="11" x2="17" y2="11"></line>
                  </svg>
               </a>
              
              
              [edit]          
            <svg xmlns="http://www.w3.org/2000/svg"  class="fix-btn fix-btn-dark ms-2" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <circle cx="12" cy="12" r="1"></circle>
               <circle cx="19" cy="12" r="1"></circle>
               <circle cx="5" cy="12" r="1"></circle>
            </svg>
            [/edit]               
         </div>
      </nav>
      
	  
	  <a href="{full-link}">
         <h4 class="card-title fw-bold mt-2">
            {title limit="200"}
         </h4>
      </a>
     
       <div class="card-text  mb-3 img-fix noimg shortstory_text cover"><p>{short-story}</p>
       </div>
   </div>
     [image-1]  	
   <div class="card-img-top cover mb-3" style="margin-top:-0.5rem;">
      <a href="{full-link}"><img src="{image-1}"></a>
   </div>
   [/image-1]
   
    {poll}
	 
    <div class="fullstory-width mx-left mb-3 " style="padding-left:15px">
   <!--
        <span class="nav-more">
  <a href="{full-link}" class="card-title" data-bs-toggle="tooltip" data-bs-placement="top" title="Read more: {title}" >Read more</a>
     </span>
-->
 
         [tags]
        <div class="mt-2 tags-cloud" data-bs-toggle="tooltip" data-bs-placement="top">
          <span clas="text-muted" style="font-size:13px;color: transparent !important;">{tags}
                   </span>
          </div>
          [/tags]
        
    </div>
     {include file="engine/modules/comment.php?news_id={news-id}&autor={login}&limit=3"}
     <div class="d-flex mb-2 bd-highlight">
      <div class="ms-3 bd-highlight like">
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
                   <span class="like">
						[rating-plus]
                        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M18 15l-6-6-6 6"/>
                        </svg>[/rating-plus]</span>
						{rating}
						<span class="dislike">
						[rating-minus]
                        
                        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" data-bs-toggle="tooltip" data-bs-placement="top" title="Dislike" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M6 9l6 6 6-6"/>
            </svg>
                      [/rating-minus]
                        </span></div>
					[/rating-type-3]
                    
					[rating-type-4]
					<div class="rate_like-dislike">
						<span class="like ignore-select">{likes}
						[rating-plus]
               <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" data-bs-toggle="tooltip" data-bs-placement="top" title="Like" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
                <path d="M18 15l-6-6-6 6"/>
            </svg>
                            [/rating-plus]</span>
						<span class="dislike ignore-select">{dislikes}
						[rating-minus]
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" data-bs-toggle="tooltip" data-bs-placement="top" title="Dislike" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
               <path d="M6 9l6 6 6-6"/>
            </svg>
                        [/rating-minus]</span>
					</div>
					[/rating-type-4]
				</div>
			[/rating]
          
           </div>
		   
		  
		   
      <div class="bd-highlight ms-4">
         [com-link] 
         <div class="card-title" data-bs-toggle="tooltip" data-bs-placement="top" title="Comments" >
            <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
               <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
            </svg>
            <span class="align-bottom ms-2 card-title">[not-comments]Discuss[/not-comments][comments] {comments-num} [/comments]</span>
         </div>
         [/com-link]  
      </div>
	  
      <div class="bd-highlight ms-4">
         [add-favorites]  
         <div data-bs-toggle="tooltip" class="card-title" data-bs-placement="top" title="Add to bookmarks">
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
	 
	  
	  
         <div class="ms-auto bd-highlight">
         <div class=" pb-2">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
               <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
               <circle cx="12" cy="12" r="3"></circle>
            </svg>
            <span class="ms-2 me-3" style="font-size:13px;">{views}  </span>
         </div>
      </div>
   </div>
</div>
</article>