class CommentsController
  loadCommentForm: ->
    $.get '/comments/new', (form) ->
      $(".comment-form").append form

new CommentsController().loadCommentForm()
