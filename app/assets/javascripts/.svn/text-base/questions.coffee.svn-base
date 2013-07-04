# QuestionsController 下所有页面的 JS 功能
window.Questions =
  # Ajax 回复后的事件
  answerCallback: (success, msg) ->
    $("#main .alert-message").remove()
    if success
      $("abbr.timeago", $("#answers .answer").first()).timeago()
      # $("abbr.timeago", $("#answers .total")).timeago()
      $("#new_answer textarea").val('')
      App.notice(msg, '#answer')
    else
      App.alert(msg, '#answer')
      $("#new_answer textarea").focus()