class CommentsController < ApplicationController
  layout false

  expose(:comments) { Comment.find_by_commentable_name_and_commentable_type(params[:name], params[:type]) }
  expose(:comment) { params[:id] ? Comment.find(params[:id]) : Comment.new }

  def new
    respond_to do |format|
      format.html
      format.json { render json: comment }
    end
  end

  def create
    respond_to do |format|
      if comment.save
        format.html { redirect_to comment, notice: 'Comment was successfully created.' }
        format.json { render json: comment, status: :created, location: comment }
      else
        format.html { render action: "new" }
        format.json { render json: comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end

  def for
    respond_to do |format|
      format.html
      format.json { render json: comments }
    end
  end
end
