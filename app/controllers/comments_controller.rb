class CommentsController < ApplicationController
  def index
    @root_comments = Comment.includes(:replies).where('parent_id IS NULL')
    @new_comment = Comment.new
  end

  def reply
    Comment.create(params[:comment])
    redirect_to action: :index
    @root_comments = Comment.where('parent_id IS NULL')
    @new_comment = Comment.new
  end
end
