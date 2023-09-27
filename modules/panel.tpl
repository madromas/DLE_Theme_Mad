<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
   <div class="offcanvas-header">
      <h5 class="offcanvas-title" id="offcanvasExampleLabel">
         <a href="/" class="app-name td-none">
            <span class="align-text-bottom card-title">Menu</span>
         </a>
      </h5>
      <a type="button" class=" text-reset" data-bs-dismiss="offcanvas" aria-label="Close">
         <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <line x1="18" y1="6" x2="6" y2="18"></line>
            <line x1="6" y1="6" x2="18" y2="18"></line>
         </svg>
      </a>
   </div>
   <div class="offcanvas-body">
      <div>
        {include file="modules/navmenu.tpl"}
         {include file="modules/description.tpl"}  
          <div class="col-9 main-bg block   float-end mt-4 overflow-auto ">
            <p class="fs-6 font-weight-bold pt-3 ps-3"><b>Categories</b></p>
            {catmenu}
         </div>
                  
      </div>
   </div>
   <div class="mb-2">{include file="modules/footer.tpl"}</div>
</div>