<div class="mx-auto" style="max-width:900px;">

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>
$(document).ready(function(){
    $('a[href^="#"], *[data-href^="#"]').on('click', function(e){
        e.preventDefault();
        var t = 700;
        var d = $(this).attr('data-href') ? $(this).attr('data-href') : $(this).attr('href');
        $('html,body').stop().animate({ scrollTop: $(d).offset().top - 90}, t);
    });
});
</script>
 <style>
   .status {
    width: 20px;
    height: 20px;
    border: 1px solid rgb(48, 69, 96);
    border-radius: 50%;
    position: absolute;
    right: 0px;
    top: 0px;
    transform: translate(40%, -40%);
    background-color: rgb(130, 130, 130);
}
.online {
    background-color: rgb(48, 249, 75);
}
  
     
    </style>
    
<div class="row">
	<div class="col-12 col-md-4">
		<div class="card mb-4 w-100 text-center">
			
            <div class="card-body p-4">
				<center><img src="{foto}{uniqid}" style="width: 120px;height: 120px;object-fit: cover;border-radius: 50%;"></center>
			
                </div>
            [online]
            <span class="status online"></span>
             [/online]
            [offline]
            <span class="status"></span>
            [/offline]
            
			<div class="card-body">
				 <div style="font-weight: 500;font-size: 1.1rem;">{Usertitle} <span class="group-icon" data-bs-toggle="tooltip" data-bs-placement="top">{group-icon}</span></div>
				<div style="font-size: 100%;" class="text-muted">{status}</div>
			
			
                <div>
             
                    <div  style="font-size: 85%;" class="text-muted"> 
{twofactor-auth}
                        </div>
               [ignore]Ignore User[/ignore]     
            
			</div>
		</div>
    
		<a class="btn btn-dark" onclick="DLESendPM('{Usertitle}'); return false;" href="/index.php?do=pm&amp;doaction=newpm&amp;username={Usertitle}">Send message</a>
    
		<div class="card w-100 my-3">
			<div class="card-body p-3">
				<div class="media text-center">
  					<div class="media-body">
    					<div class="d-flex justify-content-center mt-2"><h2 style="font-size: 0.9rem;margin-bottom:4px;"><i class="fas fa-star-half-alt mr-2 text-danger"></i> Topic rating: {rate}</h2></div>
         
           <div class="d-flex justify-content-center mt-0"><h2 style="font-size: 0.9rem;"><i class="fas fa-comments mr-2 text-danger"></i> Comments rating: {commentsrate}</h2></div>
  					</div>

				</div>
			</div>
		</div>
<div class="sticky-top" style="top:90px;z-index: 0;">
		<div class="card w-100 mb-3 lal">
      <div class="card-body p-3">
        <a href="#" data-href="#info" class="stretched-link"></a>
        <div class="media">
          <div class="media-body">
            <p class="m-0">Information</p>
            <p class="m-0 f90 text-muted">User info</p>
          </div>
        </div>
      </div>
    </div>
	

    <div class="card w-100 mb-3 lal">
      <div class="card-body p-3">
        <a href="#" data-href="#stata" class="stretched-link"></a>
        <div class="media">
          <div class="media-body">
            <p class="m-0">Statistics</p>
            <p class="m-0 f90 text-muted">Publication statistics</p>
          </div>
        </div>
      </div>
    </div>
    <div class="card w-100 mb-3 lal">
      <div class="card-body p-3">
        <a href="#" data-href="#news" class="stretched-link"></a>
        <div class="media">
           <div class="media-body">
            <p class="m-0">Publications</p>
            <p class="m-0 f90 text-muted">Recent publications</p>
          </div>
        </div>
      </div>
    </div>
    <div class="card w-100 mb-3 lal">
      <div class="card-body p-3">
        <a href="#" data-href="#coms" class="stretched-link"></a>
        <div class="media">
          <div class="media-body">
            <p class="m-0">Comments</p>
            <p class="m-0 f90 text-muted">Recent comments</p>
          </div>
        </div>
      </div>
    </div>
    <br>  
</div>
	</div>
	<div class="col-12 col-md-8 pl-md-0">
		<div class="card mb-4 w-100">
			<div class="card-body p-3">
				<ul class="list-inline mb-1" id="info">
      				<li class="list-inline-item">
        				<div class="com">
          					<i class="bi bi-plus-square-dotted"></i>
                        </div>
      				</li>
                    <li class="list-inline-item" ><h6>Information</h6></li>
    			</ul>
    			<div class="row mb-5">
    				<div class="col-12 col-md-5">
    					<div class="media mb-4">
							<svg class="svg-inline--fa fa-signature fa-w-20 text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="signature" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg=""><path fill="currentColor" d="M623.2 192c-51.8 3.5-125.7 54.7-163.1 71.5-29.1 13.1-54.2 24.4-76.1 24.4-22.6 0-26-16.2-21.3-51.9 1.1-8 11.7-79.2-42.7-76.1-25.1 1.5-64.3 24.8-169.5 126L192 182.2c30.4-75.9-53.2-151.5-129.7-102.8L7.4 116.3C0 121-2.2 130.9 2.5 138.4l17.2 27c4.7 7.5 14.6 9.7 22.1 4.9l58-38.9c18.4-11.7 40.7 7.2 32.7 27.1L34.3 404.1C27.5 421 37 448 64 448c8.3 0 16.5-3.2 22.6-9.4 42.2-42.2 154.7-150.7 211.2-195.8-2.2 28.5-2.1 58.9 20.6 83.8 15.3 16.8 37.3 25.3 65.5 25.3 35.6 0 68-14.6 102.3-30 33-14.8 99-62.6 138.4-65.8 8.5-.7 15.2-7.3 15.2-15.8v-32.1c.2-9.1-7.5-16.8-16.6-16.2z"></path></svg><!-- <i class="fas fa-signature text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;"></i> -->
  							<div class="media-body">
    							<p class="m-0">@{Usertitle}</p>
    							<p class="m-0 text-muted" style="font-size: 80%;">Login / Nick name</p>
  							</div> 
						</div>
						<div class="media mb-4">
							<svg class="svg-inline--fa fa-user-crown fa-w-14 text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;" aria-hidden="true" focusable="false" data-prefix="far" data-icon="user-crown" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224 288c70.7 0 128-57.31 128-128V0l-64 32-64-32-64 32L96 0v160c0 70.69 57.31 128 128 128zm-80-160h160v32c0 44.11-35.89 80-80 80s-80-35.89-80-80v-32zm169.6 176c-11.04 0-21.78 2.6-32.2 6.24-18 6.28-37.28 9.76-57.4 9.76-20.11 0-39.4-3.48-57.39-9.76-10.42-3.64-21.17-6.24-32.21-6.24C60.17 304 0 364.17 0 438.4V464c0 26.51 21.49 48 48 48h352c26.51 0 48-21.49 48-48v-25.6c0-74.23-60.17-134.4-134.4-134.4zM400 464H48v-25.6c0-47.64 38.76-86.4 86.4-86.4 4.18 0 9.53 1.16 16.38 3.55C174.44 363.81 199.07 368 224 368s49.56-4.19 73.22-12.45c6.85-2.39 12.21-3.55 16.38-3.55 47.64 0 86.4 38.76 86.4 86.4V464z"></path></svg><!-- <i class="far fa-user-crown text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;"></i> -->
  							<div class="media-body">
    							<p class="m-0">{fullname}[not-fullname]No name[/not-fullname]</p>
    							<p class="m-0 text-muted" style="font-size: 80%;">Name</p>
  							</div> 
						</div>
						<div class="media ">
							<svg class="svg-inline--fa fa-city fa-w-20 text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;" aria-hidden="true" focusable="false" data-prefix="far" data-icon="city" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg=""><path fill="currentColor" d="M244 384h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm0-192h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm-96 0h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm0 192h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm0-96h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm96 0h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm288 96h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm0-96h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm84-96h612V24c0-13.26-10.74-24-24-24H280c-13.26 0-24 10.74-24 24v72h-32V16c0-8.84-7.16-16-16-16h-16c-8.84 0-16 7.16-16 16v80h-64V16c0-8.84-7.16-16-16-16H80c-8.84 0-16 7.16-16 16v80H24c-13.26 0-24 10.74-24 24v376c0 8.84 7.16 16 16 16h16c8.84 0 16-7.16 16-16V144h256V48h160v192h128v256c0 8.84 7.16 16 16 16h16c8.84 0 16-7.16 16-16V216c0-13.26-10.75-24-24-24zM404 96h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm0 192h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12zm0-96h-40c-6.63 0-12 5.37-12 12v40c0 6.63 5.37 12 12 12h40c6.63 0 12-5.37 12-12v-40c0-6.63-5.37-12-12-12z"></path></svg><!-- <i class="far fa-city text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;"></i> -->
  							<div class="media-body">
    							<p class="m-0">[land]{land}[/land][not-land]<i>Not specified</i>[/not-land]</p>
    							<p class="m-0 text-muted" style="font-size: 80%;">City / Country</p>
  							</div> 
						</div>
    				</div>
    				<div class="col-12 col-md-7">
    					<div class="media mb-4">
							<svg class="svg-inline--fa fa-envelope-open fa-w-16 text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;" aria-hidden="true" focusable="false" data-prefix="far" data-icon="envelope-open" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M494.586 164.516c-4.697-3.883-111.723-89.95-135.251-108.657C337.231 38.191 299.437 0 256 0c-43.205 0-80.636 37.717-103.335 55.859-24.463 19.45-131.07 105.195-135.15 108.549A48.004 48.004 0 0 0 0 201.485V464c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V201.509a48 48 0 0 0-17.414-36.993zM464 458a6 6 0 0 1-6 6h64a6 6 0 0 1-6-6V204.347c0-1.813.816-3.526 2.226-4.665 15.87-12.814 108.793-87.554 132.364-106.293C200.755 78.88 232.398 48 256 48c23.693 0 55.857 31.369 73.41 45.389 23.573 18.741 116.503 93.493 132.366 106.316a5.99 5.99 0 0 1 2.224 4.663V458zm-31.991-187.704c4.249 5.159 3.465 12.795-1.745 16.981-28.975 23.283-59.274 47.597-70.929 56.863C336.636 362.283 299.205 400 256 400c-43.452 0-81.287-38.237-103.335-55.86-11.279-8.967-41.744-33.413-70.927-56.865-5.21-4.187-5.993-11.822-1.745-16.981l15.258-18.528c4.178-5.073 11.657-5.843 16.779-1.726 28.618 23.001 58.566 47.035 70.56 56.571C200.143 320.631 232.307 352 256 352c23.602 0 55.246-30.88 73.41-45.389 11.994-9.535 41.944-33.57 70.563-56.568 5.122-4.116 12.601-3.346 16.778 1.727l15.258 18.526z"></path></svg><!-- <i class="far fa-envelope-open text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;"></i> -->
  							<div class="media-body">
    							<p class="m-0">{editmail}</p>
    							<p class="m-0 text-muted" style="font-size: 80%;">E-mail address</p>
  							</div> 
						</div>
    					<div class="media mb-4">
							<svg class="svg-inline--fa fa-registered fa-w-16 text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;" aria-hidden="true" focusable="false" data-prefix="far" data-icon="registered" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119.033 8 8 119.033 8 256s111.033 248 248 248 248-111.033 248-248S392.967 8 256 8zm0 448c-110.532 0-200-89.451-200-200 0-110.531 89.451-200 200-200 110.532 0 200 89.451 200 200 0 110.532-89.451 200-200 200zm110.442-81.791c-53.046-96.284-50.25-91.468-53.271-96.085 24.267-13.879 39.482-41.563 39.482-73.176 0-52.503-30.247-85.252-101.498-85.252h-78.667c-6.617 0-12 5.383-12 12V380c0 6.617 5.383 12 12 12h38.568c6.617 0 12-5.383 12-12v-83.663h31.958l47.515 89.303a11.98 11.98 0 0 0 10.593 6.36h42.81c9.14 0 14.914-9.799 10.51-17.791zM256.933 239.906h-33.875v-64.14h27.377c32.417 0 38.929 12.133 38.929 31.709-.001 20.913-11.518 32.431-32.431 32.431z"></path></svg><!-- <i class="far fa-registered text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;"></i> -->
  							<div class="media-body">
    							<p class="m-0">{registration}</p>
    							<p class="m-0 text-muted" style="font-size: 80%;">Registered</p>
  							</div> 
						</div>
						<div class="media">
							<svg class="svg-inline--fa fa-history fa-w-16 text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;" aria-hidden="true" focusable="false" data-prefix="far" data-icon="history" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M504 255.532c.252 136.64-111.182 248.372-247.822 248.468-64.014.045-122.373-24.163-166.394-63.942-5.097-4.606-5.3-12.543-.443-17.4l16.96-16.96c4.529-4.529 11.776-4.659 16.555-.395C158.208 436.843 204.848 456 256 456c110.549 0 200-89.468 200-200 0-110.549-89.468-200-200-200-55.52 0-105.708 22.574-141.923 59.043l49.091 48.413c7.641 7.535 2.305 20.544-8.426 20.544H26.412c-6.627 0-12-5.373-12-12V45.443c0-10.651 12.843-16.023 20.426-8.544l45.097 44.474C124.866 36.067 187.15 8 256 8c136.811 0 247.747 110.781 248 247.532zm-167.058 90.173l14.116-19.409c3.898-5.36 2.713-12.865-2.647-16.763L280 259.778V116c0-6.627-5.373-12-12-12h-24c-6.627 0-12 5.373-12 12v168.222l88.179 64.13c5.36 3.897 12.865 2.712 16.763-2.647z"></path></svg><!-- <i class="far fa-history text-muted align-self-center mr-3" style="font-size: 1.2rem;width: 40px;"></i> -->
  							<div class="media-body">
    							<p class="m-0">{lastdate}</p>
    							<p class="m-0 text-muted" style="font-size: 80%;">Was online</p>
  							</div> 
						</div>
    				</div>
    			</div>

				<hr>


<ul class="list-inline mb-1">
      				<li class="list-inline-item">
        				<div class="com">
          					<i class="bi bi-plus-square-dotted"></i>
                        </div>
      				</li>
<li class="list-inline-item" ><h6>About me</h6></li>
    			</ul>
    			<div class="line-chart">
{info}
          </div>

<hr>
                
              
<ul class="list-inline mb-1">
      				<li class="list-inline-item">
        				<div class="com">
          					<i class="bi bi-plus-square-dotted"></i>
                        </div>
      				</li>
<li class="list-inline-item" ><h6>Signature</h6></li>
    			</ul>
    			<div class="line-chart">
{signature}
          </div>

<hr>



				<ul class="list-inline mb-1">
      				<li class="list-inline-item" id="stata">
        				<div class="com">
          					<svg class="svg-inline--fa fa-user fa-w-14 text-primary" aria-hidden="true" focusable="false" data-prefix="far" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"></path></svg><!-- <i class="far fa-user text-primary"></i> -->
        				</div>
      				</li>
<li class="list-inline-item"> <h6>Publication statistics</h6></li>
    			</ul>
    			<div class="line-chart">

          </div>



<hr>

          <div class="row mt-1">
            <div class="col-12 col-md-6 text-muted f90">
              <div>
                  
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-dotted" viewBox="0 0 16 16">
  <path d="M2.5 0c-.166 0-.33.016-.487.048l.194.98A1.51 1.51 0 0 1 2.5 1h.458V0H2.5zm2.292 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zm1.833 0h-.916v1h.916V0zm1.834 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zM13.5 0h-.458v1h.458c.1 0 .199.01.293.029l.194-.981A2.51 2.51 0 0 0 13.5 0zm2.079 1.11a2.511 2.511 0 0 0-.69-.689l-.556.831c.164.11.305.251.415.415l.83-.556zM1.11.421a2.511 2.511 0 0 0-.689.69l.831.556c.11-.164.251-.305.415-.415L1.11.422zM16 2.5c0-.166-.016-.33-.048-.487l-.98.194c.018.094.028.192.028.293v.458h1V2.5zM.048 2.013A2.51 2.51 0 0 0 0 2.5v.458h1V2.5c0-.1.01-.199.029-.293l-.981-.194zM0 3.875v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 5.708v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 7.542v.916h1v-.916H0zm15 .916h1v-.916h-1v.916zM0 9.375v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .916v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .917v.458c0 .166.016.33.048.487l.98-.194A1.51 1.51 0 0 1 1 13.5v-.458H0zm16 .458v-.458h-1v.458c0 .1-.01.199-.029.293l.981.194c.032-.158.048-.32.048-.487zM.421 14.89c.183.272.417.506.69.689l.556-.831a1.51 1.51 0 0 1-.415-.415l-.83.556zm14.469.689c.272-.183.506-.417.689-.69l-.831-.556c-.11.164-.251.305-.415.415l.556.83zm-12.877.373c.158.032.32.048.487.048h.458v-1H2.5c-.1 0-.199-.01-.293-.029l-.194.981zM13.5 16c.166 0 .33-.016.487-.048l-.194-.98A1.51 1.51 0 0 1 13.5 15h-.458v1h.458zm-9.625 0h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zm1.834-1v1h.916v-1h-.916zm1.833 1h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg>                
                  
                  
                  <!-- <i class="fal fa-layer-group mr-2"></i> --> Total publications: {news-num}</div>
              <div>
                  
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-dotted" viewBox="0 0 16 16">
  <path d="M2.5 0c-.166 0-.33.016-.487.048l.194.98A1.51 1.51 0 0 1 2.5 1h.458V0H2.5zm2.292 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zm1.833 0h-.916v1h.916V0zm1.834 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zM13.5 0h-.458v1h.458c.1 0 .199.01.293.029l.194-.981A2.51 2.51 0 0 0 13.5 0zm2.079 1.11a2.511 2.511 0 0 0-.69-.689l-.556.831c.164.11.305.251.415.415l.83-.556zM1.11.421a2.511 2.511 0 0 0-.689.69l.831.556c.11-.164.251-.305.415-.415L1.11.422zM16 2.5c0-.166-.016-.33-.048-.487l-.98.194c.018.094.028.192.028.293v.458h1V2.5zM.048 2.013A2.51 2.51 0 0 0 0 2.5v.458h1V2.5c0-.1.01-.199.029-.293l-.981-.194zM0 3.875v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 5.708v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 7.542v.916h1v-.916H0zm15 .916h1v-.916h-1v.916zM0 9.375v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .916v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .917v.458c0 .166.016.33.048.487l.98-.194A1.51 1.51 0 0 1 1 13.5v-.458H0zm16 .458v-.458h-1v.458c0 .1-.01.199-.029.293l.981.194c.032-.158.048-.32.048-.487zM.421 14.89c.183.272.417.506.69.689l.556-.831a1.51 1.51 0 0 1-.415-.415l-.83.556zm14.469.689c.272-.183.506-.417.689-.69l-.831-.556c-.11.164-.251.305-.415.415l.556.83zm-12.877.373c.158.032.32.048.487.048h.458v-1H2.5c-.1 0-.199-.01-.293-.029l-.194.981zM13.5 16c.166 0 .33-.016.487-.048l-.194-.98A1.51 1.51 0 0 1 13.5 15h-.458v1h.458zm-9.625 0h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zm1.834-1v1h.916v-1h-.916zm1.833 1h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg>                  
                  
                  <!-- <i class="fal fa-comment mr-2"></i> --> Total comments: {comm-num}</div>
            </div>
                </div>

    			<hr>
				<ul class="list-inline mb-1 mt-1" id="news">
      				
      				<li class="list-inline-item float-right">
      					
                           <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-dotted" viewBox="0 0 16 16">
  <path d="M2.5 0c-.166 0-.33.016-.487.048l.194.98A1.51 1.51 0 0 1 2.5 1h.458V0H2.5zm2.292 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zm1.833 0h-.916v1h.916V0zm1.834 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zM13.5 0h-.458v1h.458c.1 0 .199.01.293.029l.194-.981A2.51 2.51 0 0 0 13.5 0zm2.079 1.11a2.511 2.511 0 0 0-.69-.689l-.556.831c.164.11.305.251.415.415l.83-.556zM1.11.421a2.511 2.511 0 0 0-.689.69l.831.556c.11-.164.251-.305.415-.415L1.11.422zM16 2.5c0-.166-.016-.33-.048-.487l-.98.194c.018.094.028.192.028.293v.458h1V2.5zM.048 2.013A2.51 2.51 0 0 0 0 2.5v.458h1V2.5c0-.1.01-.199.029-.293l-.981-.194zM0 3.875v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 5.708v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 7.542v.916h1v-.916H0zm15 .916h1v-.916h-1v.916zM0 9.375v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .916v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .917v.458c0 .166.016.33.048.487l.98-.194A1.51 1.51 0 0 1 1 13.5v-.458H0zm16 .458v-.458h-1v.458c0 .1-.01.199-.029.293l.981.194c.032-.158.048-.32.048-.487zM.421 14.89c.183.272.417.506.69.689l.556-.831a1.51 1.51 0 0 1-.415-.415l-.83.556zm14.469.689c.272-.183.506-.417.689-.69l-.831-.556c-.11.164-.251.305-.415.415l.556.83zm-12.877.373c.158.032.32.048.487.048h.458v-1H2.5c-.1 0-.199-.01-.293-.029l-.194.981zM13.5 16c.166 0 .33-.016.487-.048l-.194-.98A1.51 1.51 0 0 1 13.5 15h-.458v1h.458zm-9.625 0h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zm1.834-1v1h.916v-1h-.916zm1.833 1h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg> 
                            
                            <!-- <i class="far fa-external-link-square"></i> --> {news} <span style="opacity: 0.5;">({news-num})</span>
      				</li>
      				
    			</ul>
    


				<ul class="list-inline mb-1 mt-1" id="coms">
      				
      				<li class="list-inline-item float-right">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-dotted" viewBox="0 0 16 16">
  <path d="M2.5 0c-.166 0-.33.016-.487.048l.194.98A1.51 1.51 0 0 1 2.5 1h.458V0H2.5zm2.292 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zm1.833 0h-.916v1h.916V0zm1.834 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zM13.5 0h-.458v1h.458c.1 0 .199.01.293.029l.194-.981A2.51 2.51 0 0 0 13.5 0zm2.079 1.11a2.511 2.511 0 0 0-.69-.689l-.556.831c.164.11.305.251.415.415l.83-.556zM1.11.421a2.511 2.511 0 0 0-.689.69l.831.556c.11-.164.251-.305.415-.415L1.11.422zM16 2.5c0-.166-.016-.33-.048-.487l-.98.194c.018.094.028.192.028.293v.458h1V2.5zM.048 2.013A2.51 2.51 0 0 0 0 2.5v.458h1V2.5c0-.1.01-.199.029-.293l-.981-.194zM0 3.875v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 5.708v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 7.542v.916h1v-.916H0zm15 .916h1v-.916h-1v.916zM0 9.375v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .916v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .917v.458c0 .166.016.33.048.487l.98-.194A1.51 1.51 0 0 1 1 13.5v-.458H0zm16 .458v-.458h-1v.458c0 .1-.01.199-.029.293l.981.194c.032-.158.048-.32.048-.487zM.421 14.89c.183.272.417.506.69.689l.556-.831a1.51 1.51 0 0 1-.415-.415l-.83.556zm14.469.689c.272-.183.506-.417.689-.69l-.831-.556c-.11.164-.251.305-.415.415l.556.83zm-12.877.373c.158.032.32.048.487.048h.458v-1H2.5c-.1 0-.199-.01-.293-.029l-.194.981zM13.5 16c.166 0 .33-.016.487-.048l-.194-.98A1.51 1.51 0 0 1 13.5 15h-.458v1h.458zm-9.625 0h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zm1.834-1v1h.916v-1h-.916zm1.833 1h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg><!-- <i class="far fa-external-link-square"></i> -->   {comments} <span style="opacity: 0.5;">({comm-num})</span></li>
      				
              </ul>
    			
              <ul class="list-inline mb-1 mt-1" id="coms">
      				
      				<li class="list-inline-item float-right">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-dotted" viewBox="0 0 16 16">
  <path d="M2.5 0c-.166 0-.33.016-.487.048l.194.98A1.51 1.51 0 0 1 2.5 1h.458V0H2.5zm2.292 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zm1.833 0h-.916v1h.916V0zm1.834 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zM13.5 0h-.458v1h.458c.1 0 .199.01.293.029l.194-.981A2.51 2.51 0 0 0 13.5 0zm2.079 1.11a2.511 2.511 0 0 0-.69-.689l-.556.831c.164.11.305.251.415.415l.83-.556zM1.11.421a2.511 2.511 0 0 0-.689.69l.831.556c.11-.164.251-.305.415-.415L1.11.422zM16 2.5c0-.166-.016-.33-.048-.487l-.98.194c.018.094.028.192.028.293v.458h1V2.5zM.048 2.013A2.51 2.51 0 0 0 0 2.5v.458h1V2.5c0-.1.01-.199.029-.293l-.981-.194zM0 3.875v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 5.708v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 7.542v.916h1v-.916H0zm15 .916h1v-.916h-1v.916zM0 9.375v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .916v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .917v.458c0 .166.016.33.048.487l.98-.194A1.51 1.51 0 0 1 1 13.5v-.458H0zm16 .458v-.458h-1v.458c0 .1-.01.199-.029.293l.981.194c.032-.158.048-.32.048-.487zM.421 14.89c.183.272.417.506.69.689l.556-.831a1.51 1.51 0 0 1-.415-.415l-.83.556zm14.469.689c.272-.183.506-.417.689-.69l-.831-.556c-.11.164-.251.305-.415.415l.556.83zm-12.877.373c.158.032.32.048.487.048h.458v-1H2.5c-.1 0-.199-.01-.293-.029l-.194.981zM13.5 16c.166 0 .33-.016.487-.048l-.194-.98A1.51 1.51 0 0 1 13.5 15h-.458v1h.458zm-9.625 0h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zm1.834-1v1h.916v-1h-.916zm1.833 1h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg><!-- <i class="far fa-external-link-square"></i> -->   [rss] RSS [/rss] <span style="opacity: 0.5;">({news-num})</span></li>
      				
              </ul>
    		
			
    			
			</div>
		</div>
	</div>
</div>



</div>


[not-logged]
<div class="mx-auto" style="max-width:900px;">
  <div class="card mb-2">
    <div class="card-body">
<div class="mb-2">
<div class="row">
  <div class="col-md-6">
    <div class="form-group mb-3">
      <label for="fullname">Your name</label>
      <input type="text" name="fullname" id="fullname" value="{fullname}" class="form-control">
    </div>
  </div>
  <div class="col-md-6">
    <div class="form-group mb-3">
      <label for="email">Your E-mail</label>
      <input type="email" name="email" id="email" value="{editmail}" class="form-control" required>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-6">
    <div class="form-group mb-3">
      <label for="land">Place of residence</label>
      <input type="text" name="land" id="land" value="{land}" class="form-control">
    </div>
  </div>
  <div class="col-md-6">
    <div class="form-group mb-3">
      <label>Time zone</label>
      {timezones}
    </div>
  </div>
</div>
<br>
<div class="row">
  <div class="col-md-12">
    <div class="form-group mb-3">
      <label for="altpass">Old password</label>
      <input type="password" name="altpass" id="altpass" class="form-control">
    </div>
  </div>
  <div class="col-md-6">
    <div class="form-group mb-3">
      <label for="password1">New password</label>
      <input type="password" name="password1" id="password1" class="form-control">
    </div>
  </div>
  <div class="col-md-6">
    <div class="form-group mb-3">
      <label for="password2">Repeat the new password</label>
      <input type="password" name="password2" id="password2" class="form-control">
    </div>
  </div>
</div>
<div class="row">
  <div class="input-group mb-3 mt-3">
    <div class="form-group mb-3" style="padding: 0rem;">
      <label for="image">Upload an avatar</label>
      <input type="file" name="image" id="image" class="wide">

      <div class="custom-control custom-switch mt-2">
        <input type="checkbox" class="custom-control-input" name="del_foto" id="del_foto" value="yes">
        <label class="custom-control-label" for="del_foto">Delete Avatar</label>
      </div>
    </div>
  </div>
  <div class="col-md-12">
    <div class="form-group mb-3">
      <label for="info">About me</label>
      <textarea name="info" id="info" rows="5" class="form-control">{editinfo}</textarea>
    </div>
  </div>
  <div class="col-md-12">
    <div class="form-group mb-3">
      <label for="signature">Signature</label>
      <textarea name="signature" id="signature" rows="3" class="form-control">{editsignature}</textarea>
    </div>
  </div>
    
    
 {social-list}   
    
  <div class="col-md-12">
    <div class="form-group mb-3">
      <label for="signature">List of ignored users:</label>
      {ignore-list}
    </div>
  </div>
    
  <div class="col-md-12">
    <table class="table table-bordered" style="width:100%">
      {xfields}
    </table>
  </div>
  <div class="col-md-12 f90">
    <div>{news-subscribe}</div>
    <div>{comments-reply-subscribe}</div>
    <div>{unsubscribe}</div>
  </div>
    </div></div></div></div></div>
       
        <div class="mb-2 mx-auto " style="max-width:900px;">
          <button class="btn btn-dark" name="submit" type="submit">Save</button>
          <input name="submit" type="hidden" id="submit" value="submit">
        </div>

  [/not-logged]
