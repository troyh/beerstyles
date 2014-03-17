jQuery ($) ->

	$("#nameSortButton").click ->
		s=$('.style').sort( (a,b) ->
			$(a).children('.name').get(0).innerHTML.localeCompare($(b).children('.name').get(0).innerHTML)
		).appendTo('#styles')
	
	$("#numberSortButton").click ->
		$('.style').sort( (a,b) ->
			$(a).attr('id').localeCompare($(b).attr('id'))
		).appendTo('#styles')

	$(".name").click ->
		$(this).siblings('.info').slideDown()
