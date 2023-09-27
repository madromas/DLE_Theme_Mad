<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="{charset}">
	<style>
		body { margin: 4% 8%; font: 300 18px/1.5 Georgia, "Times New Roman", arial, sans-serif; background-color: #fff; color: #000; }
		h1,h2,h3,h4,h5 { margin: 2em 0 .6em 0; letter-spacing: -0.01em; line-height: normal; font-weight: bold; text-rendering: optimizeLegibility; }
		h1 { font-size: 24px; }
		h2 { font-size: 22px; }
		h3 { font-size: 20px; }
		h4 { font-size: 18px; }
		h5 { font-size: 16px; }
		img { border:0; }
		.top, .back, .meta { font-style: italic; font-size: .8em; }
		.meta { color: #b1b1b1; margin: 1em 0 3em 0; }
        .img-com img {
	display: block !important;
	max-width: 80% !important;
	max-height: 100% !important;
	object-fit: cover !important;
margin-right: auto;
}

.img-com .dleplyrplayer{
	display: block !important;
	max-width: 60% !important;
	max-height: 100% !important;
	object-fit: cover !important;
margin-right: auto;
}

@media (min-width: 1300px) {
	.img-com p:nth-child(3) {
		margin: 0 -0px;
	}
}


.img-fix img {
	display: block !important;
	max-width: 100% !important;
	max-height: 100% !important;
	object-fit: cover !important;
	margin-left: auto;
margin-right: auto;
}

@media (min-width: 1300px) {
	.img-fix p:nth-child(3) {
		margin: 0 -0px;
	}
}
    @media (max-width: 800px) {
        iframe {
          border: 0;
width: 100%;
max-height: 250px;
display: inline-block;
        }
      }    
        iframe {
	border: 0;
	width: 100%;
	display: inline-block;
}

	</style>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500&amp;display=swap">
      <link rel="icon" href="{theme}/images/favicon.png">
	<title>Main > Print version > {title}</title>
	<link rel="canonical" href="{full-link}">
</head>
<body>
	<div class="top"><a href="/">Main</a> / [full-link]{title}[/full-link]</div><br>
	<h2 class="card-title">{title}</h2><br>
	<div class="text img-fix">
	{short-story}
	</div>
	<div class="meta">{date}</div>
	<a class="back" href="javascript:history.go(-1)">Go Back</a>
</body>
</html>