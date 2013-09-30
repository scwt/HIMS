$ ->
  ## 新建record
  $('form[id^="new_"]').on "ajax:success", (evt, data, status, xhr)->
   
    $id = $(this).closest('section').attr('id')
    window.location.reload()
    #baseUrl = window.location.pathname
 
    #window.location.reload
  
  ## 编辑record

  ## 删除
  $('.delete_item').on "ajax:success", (evt, data, status, xhr) ->

    section_id = $(this).closest('section').attr('id')
    
    
