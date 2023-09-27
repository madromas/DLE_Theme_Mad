<div class="app-header fixed-top bg-header">

 <div class="app-header-left">
        <span  class="d-xl-none" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-label="Manu" aria-controls="offcanvasExample">
         <svg xmlns="http://www.w3.org/2000/svg" width="50" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
            <line x1="3" y1="12" x2="21" y2="12"></line>
            <line x1="3" y1="6" x2="21" y2="6"></line>
            <line x1="3" y1="18" x2="21" y2="18"></line>
         </svg>
      </span>
     
     <SCRIPT LANGUAGE="JavaScript">
var theImages = new Array()
 
//Random-loading images
theImages[0] = 'https://i.pinimg.com/originals/24/f1/67/24f1671b0f3f6c2418db36a9270b1506.gif' // travolta
theImages[1] = '{theme}/images/cat.gif' // cat
theImages[2] = 'https://64.media.tumblr.com/559a9866dfcec609a1e64d8ae9751a26/5906ea525b7d1a41-06/s400x600/aa78bdd6606f29020696531049d862789e510758.gifv' // peter
theImages[3] = '{theme}/images/stewie.gif' // stewie
 theImages[4] = 'https://64.media.tumblr.com/35c1ad3d3b4b1c8e49aab15ac3b8071b/70eeeb5e952a0a98-d5/s250x400/b9e92f608c6f2ba0b11e2d62c914f428274b2a36.gifv' // keanu
         
var j = 0
var p = theImages.length;
var preBuffer = new Array()
 
for (i = 0; i < p; i++){
preBuffer[i] = new Image()
preBuffer[i].src = theImages[i]
}
var whichImage = Math.round(Math.random()*(p-1));
 
function showImage(){
    if(whichImage==0){
    document.write('<img src="'+theImages[whichImage]+'" border=0 width=24px>');
    }
    else if(whichImage==1){
    document.write('<img src="'+theImages[whichImage]+'" border=0 width=24px>');
    }
   else if(whichImage==2){
    document.write('<img src="'+theImages[whichImage]+'" border=0 width=24px>');
    }
 else if(whichImage==3){
    document.write('<img src="'+theImages[whichImage]+'" border=0 width=24px>');
    }
     else if(whichImage==4){
    document.write('<img src="'+theImages[whichImage]+'" border=0 width=24px>');
    }
}
 
</script>
  <!-- Desktop Logo View -->
	  <a href="/" class="app-name d-none d-lg-block">
          <g transform="translate(0.000000,604.000000) scale(0.100000,-0.100000)"
               class="logo-dark" stroke="none">
               <img src="{theme}/images/logo.png" width="200" height="auto" title="MadWay - If you are normal, you have got to be MAD!">
                </g>
          <script>showImage();</script>
      </a> 
     
	 <!-- Mobile Logo View -->
           <a href="/" class="app-name d-xl-none">
          <g transform="translate(0.000000,604.000000) scale(0.100000,-0.100000)"
               class="logo-dark" stroke="none">
               <img src="{theme}/images/logo.png" width="120" height="auto" title="MadWay - If you are normal, you have got to be MAD!">
                </g>
      </a>
	 
	 
      <form id="q_search" class="search-wrapper d-none mt-1 d-lg-block" method="post" style="max-width: 380px">
         <div>
            <input id="story" class="search-input pt-2" name="story" placeholder="Search" type="search">
            <a href="https://madway.net/?do=search" style="color:gray;"><svg xmlns="http://www.w3.org/2000/svg" class="mb-1" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" class="feather feather-search" viewBox="0 0 24 24">
               <defs></defs>
               <circle cx="11" cy="11" r="8"></circle>
               <path d="M21 21l-4.35-4.35"></path>
                </svg></a>
         </div>
         <input type="hidden" name="do" value="search">
         <input type="hidden" name="subaction" value="search">
      </form>
   </div>
    
   <div class="app-header-right">
      
     <div class=" mode-switch">
     <button  class="sel-dark-toggle" id="toggle-darkmod">
    <svg  class="i__moon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
            <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
         </svg>
   
    <svg  class="i__sun" xmlns="http://www.w3.org/2000/svg" style="display:none;" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
          <circle cx="12" cy="12" r="5"/><path d="M12 1v2M12 21v2M4.2 4.2l1.4 1.4M18.4 18.4l1.4 1.4M1 12h2M21 12h2M4.2 19.8l1.4-1.4M18.4 5.6l1.4-1.4"/>  
         </svg></button>
       </div>
  <script>
const
g=i=>document.getElementById(i),
classes=g('h').classList,
cl="dark";

if(localStorage.getItem("toggled-ttl")>Date.now())
classes.toggle(cl,localStorage.getItem("toggled"));

g("toggle-darkmod").addEventListener("click",function(e){
e.preventDefault();

if(classes.contains(cl)) {
localStorage.removeItem("toggled");
localStorage.removeItem("toggled-ttl");
classes.remove(cl);
}
else {
localStorage.setItem("toggled",1);
localStorage.setItem("toggled-ttl",Date.now() + 60*86400000);
classes.add(cl);
}
});
</script>

      [not-group=5]
  
  
       <a href="/addnews.html" class="text-dark d-none d-lg-block">
         <button class="add-btn" >
            <svg class="btn-icon" xmlns="http://www.w3.org/2000/svg" width="40" height="16" data-bs-toggle="tooltip" data-bs-placement="top" title="Create topic" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
               <polygon points="16 3 21 8 8 21 3 21 3 16 16 3"></polygon>
            </svg> 
         </button> 
      </a>
      [/not-group]
      [group=5]
      <button class="mode-switch" data-bs-toggle="popover" title="Log in" data-bs-content="Log in to the site to use all the functionality.">
         <svg xmlns="http://www.w3.org/2000/svg" class="d-none d-lg-block ms-2" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
            <path d="M22 17H2a3 3 0 0 0 3-3V9a7 7 0 0 1 14 0v5a3 3 0 0 0 3 3zm-8.27 4a2 2 0 0 1-3.46 0"></path>
         </svg>
      </button>
      <div class="ms-3 d-none d-lg-block"></div>
      <div class="dropdown profile-btn">
         <button class="btn btn-success btn-sm rounded-pill px-3" data-bs-toggle="modal" data-bs-target="#staticBackdrop" >
         Login
         </button>
      </div>
      [/group]
      [not-group=5]{login}[/not-group]
   </div>
</div>
