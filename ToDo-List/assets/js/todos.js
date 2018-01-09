//Check off specific Todos by clicking


//Note: use on instead of click (event listener) 
// bcz on works on dynamic addotion of elements as well
// It will give the effects to the new elements without changing 
// the code of addition
// For that, include the required elements in on arguments 
$("ul").on("click","li",function(){ 
	$(this).toggleClass("completed");
});

//Click on X to delete Todo

$("ul").on("click","span",function(event){
	$(this).parent().fadeOut(500,function(){
		$(this).remove();
	});
	event.stopPropogation();
});


//Adding li element at runtime
$("input[type='text']").keypress(function(event){

	if(event.which===13){
		//Grabbing new todo text from input
		var todoText=$(this).val();
		$(this).val("");
		$("ul").append("<li><span>X</span> "+ todoText +"</li>");
	}
});