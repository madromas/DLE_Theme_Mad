<div class="card-body">
   <h5 class="title">{question}</h5>
   <div class="my-3 vote_list vote">
      {list}
   </div>
   [voted]
   <div class="fw-bold">Voted: {votes}</div>
   [/voted]
   [not-voted]
   <button title="Vote" class="btn btn-dark" type="submit" onclick="doPoll('vote', '{news-id}'); return false;" ><b>Vote</b></button>
   <button title="Poll results" class="btn btn-dark" type="button" onclick="doPoll('results', '{news-id}'); return false;">
   <span class="w-bold">Poll results</span>
   </button>
   [/not-voted]
</div>