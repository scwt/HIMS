$ ->

  $("form[id^='new_']").on "ajax:success",(e,data,status,xhr) ->
    section_id=$(this).closest('section').attr('id')
    nav_id = "#"+section_id
   
    $.cookie('current_tab',nav_id)
   
    window.location.reload()
  $("form[id^='edit_']").on "ajax:success",(e,data,status,xhr) ->
    section_id=$(this).closest('section').attr('id')
    nav_id = "#"+section_id
   
    $.cookie('current_tab',nav_id)
   
    window.location.reload()

  $("a.delete_item").on "ajax:success",(e,data,status,xhr) ->
  
    section_id=$(this).closest('section').attr('id')
    nav_id = "#"+section_id
   
    $.cookie('current_tab',nav_id)
   
    window.location.reload()

   
  if $.cookie("current_tab")
    nav_id=$.cookie('current_tab')
    $('#tab a[href='+nav_id+']').tab('show')
    $.cookie('current_tab',null)
