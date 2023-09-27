<div class="fullstory-width mx-auto card p-5 mb-3">
<div class="mb-2">
<div class="users_search">
	<form action="" method="get">
		<input type="hidden" name="do" value="users" />
		<div class="mt-2">
			Search by login: <input type="text" name="login" class="form-control " value="{login}"/>
		</div>
		
        <div class="mt-2">
        Sort by <select name="count">
			<option value="">Select</option>
			{count}
		</select>
		<select name="order">
			<option value="">Select</option>
			{order}
		</select>
		<select name="sort">
			<option value="">Select</option>
			{sort}
		</select>
		Show only 
		<select name="usergroups">
			<option value="">Select</option>
			{usergroups}
		</select>
		<input type="submit" class="btn btn-dark card-title" value="Search"/>
        </div>
		<div class="mt-2">
			{numbers}
		</div>
	</form>
</div>
    </div>
   </div> 
    