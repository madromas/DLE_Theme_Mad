<div id="votes" class="px-3 pb-3"><br>
    <h6 class="title">{title}</h6>
    <div class="vote_more"><a href="#" class="card-title" onclick="ShowAllVotes(); return false;">Other polls...</a></div>
  
	
	[votelist]
	<form method="post" name="vote">
	[/votelist]
		<div class="vote_list">
			{list}
		</div>
	[voteresult]
		<div class="vote_votes">Voted: {votes}</div>
	[/voteresult]
	[votelist]
		<input type="hidden" name="vote_action" value="vote">
		<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
		<button title="Vote" class="btn btn-dark" type="submit" onclick="doVote('vote'); return false;" ><b>Vote</b></button>
		<button title="Vote results" class="btn btn-dark" type="button" onclick="doVote('results'); return false;" >
			<span class="title_hide">Vote results</span>
		</button>
	</form>
	[/votelist]
</div>