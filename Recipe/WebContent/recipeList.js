window.addEventListener("load",function(){
	
	var recipeName = document.getElementById("recipe-name");
	
	var recipeId = document.getElementById("recipe-search");
	recipeId.onclick = function() {
		alert("으아아아 "+recipeName.value);
		

	}

	var recipeTable = document.getElementById("recipe-table");
	recipeTable.onclick = function() {
		
		//var tds = recipeTable.getElementsByTagName("td");
		//var tds = recipeTable.getElementsByClassName("recipe-id");
		var tds = recipeTable.getElementsByTagName("td");
		
		alert("test1212=  "+tds[0].value);
	}
});

	
