<div class="fullstory-width mx-auto card p-5 mb-3">
<div class="mb-2">
<div class="user_set">
	<div style="float:left;">
		<a {profile_m} href="{profile}"><img class="card rounded-circle user_ava" src="{foto}" title="{usertitle}" alt="{usertitle}" /></a>
		<div class="user_inf">
            <div><a {profile_m} href="{profile}">{usertitle}</a>([online]<span style="color:#02d502">Online</span>[/online][offline]<span style="color:#d97676">Offline</span>[/offline])</div>
			<ul>
				<li><span class="grey">Name:</span> <b>{fullname}[not-fullname]---[/not-fullname]</b></li>
				<li><span class="grey">Group:</span> <b>{status}</b></li>
				<li><span class="grey">Registration date:</span> <b>{registration}</b></li>
				<li><span class="grey">Last visit:</span> <b>{lastdate}</b></li>
			</ul>
			<ul>
				<li><span class="grey">Number of publications:</span> <b>{news-num}</b></li>
				<li><span class="grey">Number of comments:</span> <b>{comm-num}</b></li>
			</ul>
		</div>
	</div>
	[not-group=5]
	<div style="float:right;">
		<ul class="px-3 mb-1 post_com" style="list-style-type:none;">
			<li><a href="@{Usertitle}">Profile</a></li>
			[pm]<li><a onclick="DLESendPM('{Usertitle}'); return false;" href="/index.php?do=pm&amp;doaction=newpm&amp;username={Usertitle}">Send PM</a></li>[/pm]
			[email]<li><a href="{email}">Send E-mail</a></li>[/email]
		</ul>
	</div>
	[/not-group]
</div>
    
    </div>
</div>