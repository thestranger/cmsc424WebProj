// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

var count = 1;

function remove_fields(link) {
  $(link).prev("input[type=hidden]").val = "1";
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}

function displayQuestion(link) {
	if (link.value == ""){
		$(link).next().html(""); //Set question text
		$(link).next().prop("disabled", false);

		$(link).next().next().next().val("Short Answer"); //Set question type
		$(link).next().next().next().prop("disabled", false);

		$(link).next().next().next().next().next().text(""); //Set correct answer
		$(link).next().next().next().next().next().prop("disabled", false);

	}
	else{
		$(link).next().html(link.options[link.value].text); //Set question text
		$(link).next().prop("disabled", true);

		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET","/questionquery/" + link.value, false);
		xmlhttp.send();

		var start = xmlhttp.responseText.indexOf("||||");
		var end = xmlhttp.responseText.indexOf("||||", start+4);
		var typeAndAnswer = xmlhttp.responseText.substring(start+4, end);
		var middle = typeAndAnswer.indexOf(";;");
		var questionType = typeAndAnswer.substring(0, middle);
		var answer = typeAndAnswer.substring(middle + 2);

		$(link).next().next().next().val(questionType); //Set question type
		$(link).next().next().next().prop("disabled", true);

		$(link).next().next().next().next().next().text(answer); //Set correct answer
		$(link).next().next().next().next().next().prop("disabled", true);
	}
	//assignment[questions_attributes][0][question_type]
	//assignment[questions_attributes][new_questions][question_type]
}
