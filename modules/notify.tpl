<div class="modal fade" id="news_site" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
         <div class="modal-header border-bottom">
            <div class="d-flex justify-content-start">
               <div class="title_bage tb_lg">
                   <svg xmlns="http://www.w3.org/2000/svg" width="20" class="bd-highlight mt-1 ms-2" height="20" class="me-3" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                     <path d="M22 17H2a3 3 0 0 0 3-3V9a7 7 0 0 1 14 0v5a3 3 0 0 0 3 3zm-8.27 4a2 2 0 0 1-3.46 0"></path>
                  </svg>
               </div>
               <h5 class="modal-title fw-bold ms-3 mt-1 fs-5 " id="exampleModalLabel">Notifications</h5>
            </div>            
            <svg xmlns="http://www.w3.org/2000/svg" type="button" data-bs-dismiss="modal" aria-label="Close" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="bevel"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
         </div>
         <div class="modal-body">
            <ul class="notify">{custom order="date" category="2,3,4,5,6,7,8,9,11,12" limit="5" template="modules/notify_item"}</ul>
            <div class="d-flex justify-content-center py-5" id="no_notify">
               No notification at the moment 
            </div>
         </div>
      </div>
   </div>
</div>