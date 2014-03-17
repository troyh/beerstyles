(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);throw new Error("Cannot find module '"+o+"'")}var f=n[o]={exports:{}};t[o][0].call(f.exports,function(e){var n=t[o][1][e];return s(n?n:e)},f,f.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
jQuery(function($) {
  $("#nameSortButton").click(function() {
    var s;
    return s = $('.style').sort(function(a, b) {
      return $(a).children('.name').get(0).innerHTML.localeCompare($(b).children('.name').get(0).innerHTML);
    }).appendTo('#styles');
  });
  $("#numberSortButton").click(function() {
    return $('.style').sort(function(a, b) {
      return $(a).attr('id').localeCompare($(b).attr('id'));
    }).appendTo('#styles');
  });
  return $(".name").click(function() {
    return $(this).siblings('.info').slideDown();
  });
});


},{}]},{},[1])