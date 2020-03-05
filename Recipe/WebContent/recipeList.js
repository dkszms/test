window.addEventListener("load",function(){
	
	var recipeName = document.getElementById("recipe-name");
	
	var recipeId = document.getElementById("recipe-search");
	recipeId.onclick = function() {
		alert("으아아아 "+recipeName.value);
		

	}

	var recipeTable = document.getElementById("recipe-table");
	recipeTable.onclick = function() {
		
		var recipeId = recipeTable.querySelector("td[id='recipe-id']").textContent;
		alert("test rh=  " +recipeId);

		location.href="/detail?id="+recipeId;
		

	}
});
