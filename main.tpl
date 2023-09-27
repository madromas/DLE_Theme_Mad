<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" 
"http://www.w3.org/TR/html4/strict.dtd">
<html lang="en" id="h">
   <head>
       <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1828851643911658"
     crossorigin="anonymous"></script>
       <!-- Include the plugin CSS file -->
      {headers}
      
	  [aviable=showfull]
<meta name="twitter:card" content="summary" />
<meta name="twitter:creator" content="@madwaynet on twitter" />
[/aviable]
     <!-- Metategs -->
  
         <meta name="theme-color" content="currentColor"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	  <meta name="apple-mobile-web-app-capable" content="yes">
	   <link rel="stylesheet"  href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500&amp;display=swap">
      <link rel="icon" href="{theme}/images/favicon.png">
     
<link rel="shortcut icon" href="/favicon.png" />
 <!-- CSS -->      
        
      <link rel="stylesheet" type="text/css" href="{THEME}/css/engine.css">
      <link rel="stylesheet" type="text/css" href="{THEME}/css/theme.css">
      <link rel="stylesheet" type="text/css" href="{THEME}/css/theme-dark.css">
      <link rel="stylesheet" type="text/css" href="{THEME}/css/bootstrap.css">
      <link rel="manifest" href="/templates/pwa-manifest.json">
       <link rel="stylesheet" type="text/css" media="all" href="{THEME}/prew/fancybox.css" />
	   <link	rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	</head>

<body onload="find_relates(); return false;">

	  {include file="modules/header.tpl"}
       
       <script src="{THEME}/js/theme.js"></script>
	   
    <script src="{THEME}/js/bootstrap.bundle.min.js"></script>
     <script type='text/javascript' src='{THEME}/prew/fancybox.js'></script> 
    
   
     <div class="container-fluid header-fix">
        <div class="row" >  
    
    <div class="col-lg-25 d-none d-lg-block">
        {include file='modules/nav.tpl'}
                </div>
    
            <div class="col[not-available=userinfo][/not-available] mb-5 mt-2 pb-3" >
               {info}         
                [banner_header]
{banner_header}
[/banner_header]
                {include file="modules/header-main.tpl"}
                 
				 [available=lastcomments]
               <div class="card mb-3 py-3 fullstory-width mx-auto">[/available]
                   <div id="content">{content}</div>
                   [available=lastcomments]</div>
               [/available]
            </div>
            [available=main|showfull|favorites|cat|newposts|lastnews|alltags|tags|allnews|date|search]
            <div class="d-none d-lg-block col-lg-3 ">{include file="modules/sidebar.tpl"}</div>
            [/available]
         </div>
      </div>
      {include file="modules/panel.tpl"}
       
      {include file="modules/footer-mobile.tpl"} 
      
     <!-- JS -->
      {AJAX}
      [group=5]{login}[/group]
     {include file="modules/notify.tpl"}
   
      <script src="https://kit.fontawesome.com/ccf1126848.js" crossorigin="anonymous"></script> 
      <script src="{THEME}/js/mad.js"></script>
	  <script src="{THEME}/js/scripts.js"></script> 
  <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1828851643911658"
     crossorigin="anonymous"></script>
    

    <script type="text/javascript">
    // Checking browser
        if ("serviceWorker" in navigator) {
          if (navigator.serviceWorker.controller) {
            console.log("[PWA Builder] active service worker found, no need to register");
          } else {
            //  Регистрация serviceWorker
            navigator.serviceWorker
              .register("/pwa-sw.js", {
                scope: "/"
              })
              .then(function (reg) {
                console.log("[PWA Builder] Service worker has been registered for scope: " + reg.scope);
              });
          }
        }
    </script>
	
    <!-- Stats for admin panel -->
	{include file="engine/modules/simple_dle_stats/index.php"}
	<!-- MadWay.net -->
    </body>
	
	
    <!-- Scroll To Top -->
</html>

 <a href='#' class='scrollToTop' title="Back to top">
     
     <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M18 15l-6-6-6 6"/></svg>
     
     </a>
    <script>
$(document).ready(function(){

    //Check to see if the window is top if not then display button
    $(window).scroll(function(){
        if ($(this).scrollTop() > 500) {
            $('.scrollToTop').fadeIn();
        } else {
            $('.scrollToTop').fadeOut();
        }
    });

    //Click event to scroll to top
    $('.scrollToTop').click(function(){
        $('html, body').animate({scrollTop : 0},800);
        return false;
    });

});
</script> 