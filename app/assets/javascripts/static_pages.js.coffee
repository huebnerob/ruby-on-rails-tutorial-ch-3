# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# http://stackoverflow.com/a/9767636/3720888

countChars = (countfrom,displayto) ->
  len = document.getElementById(countfrom).value.length;
  document.getElementById(displayto).innerHTML = len;

testjsfunction = () ->
	print("my message here")
	alert("javascript is working wutwut")
