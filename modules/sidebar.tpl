<div class="sticky-top sidebar me-3 mt-2 st" >
   <div class="stories-fix">
      <p class="fs-6 font-weight-bold ps-1 ">
         
            Latest on MadWay
            <svg class="ms-2"xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
               <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
            </svg>
         </p>
      <div class="mb-3 d-flex flex-row mx-auto">
         {custom limit="5" category="2,3,4,5,6,7,8,11,12,18" template="custom-stories"}
      </div>
   </div>

      <div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
         </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Comments</span>
         <small class="ms-auto bd-highlight me-3"><a class="card-title" href="/index.php?do=lastcomments">all</a></small>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-2 pb-3">{customcomments category="2,3,4,5,6,7,8,9,11,12,18" order="date" limit="10"  template="custom-comments"}</div>
   </div>
    
    {calendar}
    [not-available=showfull|favorites|cat|newposts|lastnews|alltags|tags|allnews|date|search]
          
      <div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
         <rect x="3" y="3" width="18" height="18" rx="2"/><circle cx="8.5" cy="8.5" r="1.5"/><path d="M20.4 14.5L16 10 4 20"/>
          </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Gallery</span>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-3 pb-3 flex-row2">{custom category="2,3,4,5,6,7,8,9,11,12,18" template="custom-foto" aviable="global" from="0" order="rand" limit="15" cache="yes"}
          </div>
   </div> 
     
    
    <div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle>
          </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Most viewed</span>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-2 pb-3">
	  
	  {custom category="2,3,4,5,6,,7,8,9,11,12,18" template="mostviewed" days_views="10000" aviable="global" order="reads" limit="7" cache="yes"}</div>
   </div> 
     
<div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
         <path d="M17 2.1l4 4-4 4"/><path d="M3 12.2v-2a4 4 0 0 1 4-4h12.8M7 21.9l-4-4 4-4"/><path d="M21 11.8v2a4 4 0 0 1-4 4H4.2"/>
          </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Random</span>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-2 pb-3">{custom category="2,3,4,5,6,7,8,11,12,18" template="modules/random" aviable="global" from="0" limit="7" order="rand" cache="yes"}</div>
   </div> 
  
    
   <div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M14 2H6a2 2 0 0 0-2 2v16c0 1.1.9 2 2 2h12a2 2 0 0 0 2-2V8l-6-6z"/><path d="M14 3v5h5M16 13H8M16 17H8M10 9H8"/>
          </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Popular articles</span>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-2 pb-3">
	  
	  {custom category="2,3,4,5,6,7,8,11,12,18" template="topnews" aviable="global" from="0" limit="7" order="rating" cache="yes"}</div>
   </div> 

    <div class="card  bg-white mt-3 h-100">
   {vote}
    </div>
    
    <div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
       <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path><line x1="7" y1="7" x2="7.01" y2="7"></line>
          </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Tags Cloud</span>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-3 pb-3 tags-cloud">{tags}</div>
   </div>  
    
    <div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
       <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
         <line x1="22" y1="12" x2="2" y2="12"></line><path d="M5.45 5.11L2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z"></path><line x1="6" y1="16" x2="6" y2="16"></line><line x1="10" y1="16" x2="10" y2="16"></line>
          </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Archives</span>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-3 pb-3">{archives}</div>
   </div>  
    
    <div class="card  bg-white mt-3 h-100">
      <div class="ps-3 pt-3 d-flex bd-highlight">
       <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline>
          </svg>
         <span class="fw-bold bd-highlight ms-2 mt-1">Subscribe</span>
      </div>
      <hr class="mb-3 mx-3 mt-3">
      <div class="px-3 pb-3">
        <div class="mb-2">
            <p class="mb-3">Subscribe and get the latest news</p>
					<label><input class="form-control" type="email" name="email" placeholder="Your email" required=""></label>
          </div>
					<p><input class="btn btn-dark" type="submit" value="Subscribe"></p>
			</div>
   </div>  
    [/not-available]
    
    [banner_side]
{banner_side}
[/banner_side]
   
    
   <hr class="mt-3 mx-3">
   {include file="modules/footer.tpl"}
</div>
[available=main|showfull]





<p class="purechat-collapsed-image" data-trigger="expand" style="background-image: url('/templates/Mad/images/dickbutt.webp') !important;  background-repeat: no-repeat; height: 212.96px !important; z-index: -11 !important; margin-top: -60px !important; margin-left: 60px !important;">
    </p>
[/available]
