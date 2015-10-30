
change_visibility = (status) ->
  if status == "Scheduled"
    $(".published-field").show()
  else
    $(".published-field").hide()

jQuery ->
  change_visibility $("#lyric_status :selected").text()
  $("#lyric_status").on "change", (e) ->
    change_visibility $(this).find(":selected").text()


