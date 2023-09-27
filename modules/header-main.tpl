[available=main|cat|allnews|tags]
<!-- Carousel
<div class="owl-carousel mx-auto" style="max-width:800px;">
   {custom order="title" category="2,3,4,5,6,7,8,11,12" limit="15" template="carusel"}
</div> -->

<!-- Latest in mobile view
<div class="card mt-3 mx-auto d-lg-none main-width mx-auto" >
   <div class="d-flex ms-3 mt-3">
      <p class="fs-6 font-weight-bold ps-1 "><b>Latest</b></p>
   </div>
   <div class="mb-3 d-flex flex-row mx-auto">
      {custom category="2,3,4,5,6,7,8,11,12" limit="5" template="custom-stories"}
   </div>
</div>
-->

<!-- Information displayed in categories -->
[available=cat]
<div class="card mb-3 mx-auto main-width py-3">
   <div class="card-body">
      <div class="d-flex justify-content-center"><a href="{category-url}"> <img src="{category-icon}"  width="100" height="100" class="card"></a></div>
      <div class="d-flex justify-content-center mt-3">
         <h4 class="fw-bold">{category-title}</h4>
      </div>
      <div class="d-grid justify-content-center">   {category-description}</div>
	  <div class="px-3 pb-3 mt-2 tags-cloud">{tags}</div>
   </div>
</div>
[/available]

<!-- Navigation in main.tpl -->
 <div class="fw-bold ms-3 mb-3 flex-grow-1 bd-highlight">
   </div>

<div class="mb-3 main-width mx-auto" id="collapseExampleSort">
   <div class="card card-body">
      {sort}
    <a type="button" id="notify_alert" class="link-dark ms-auto bd-highlight me-1" style="margin-top:-22px" data-bs-toggle="modal" data-bs-target="#news_site">
                  <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                     <path d="M22 17H2a3 3 0 0 0 3-3V9a7 7 0 0 1 14 0v5a3 3 0 0 0 3 3zm-8.27 4a2 2 0 0 1-3.46 0"></path>
                  </svg>
                  
               </a>
   </div>
    
</div>

[/available]
<!-- Information displayed on the latest news page -->
[available=lastnews] 
<div class="card mb-3 mx-auto main-width card-body">
   <h4 class="fw-bold">
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="mb-1 me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
         <circle cx="12" cy="12" r="10"></circle>
         <polyline points="12 6 12 12 16 14"></polyline>
      </svg>
      Latest posts
   </h4>
   <hr>
   <p>This section displays the latest posts published on the site.</p>
</div>
[/available]
<!-- Information displayed on the recent comments page -->
[available=lastcomments] 
<div class="card mb-3 mx-auto fullstory-width card-body">
   <h4 class="fw-bold">
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="mb-1 me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
         <circle cx="12" cy="12" r="10"></circle>
         <polyline points="12 6 12 12 16 14"></polyline>
      </svg>
      Latest comments
   </h4>
   <hr>
   <p>This section displays the latest comments published on the site.</p>
</div>
[/available]