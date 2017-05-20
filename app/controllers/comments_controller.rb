class CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :destroy]


  private def set_comment
    @comment = Comment.find(params[:id])
  end

  private def comment_params
    params.require(:comment).permit(:comment, :commentable_type, :commentable_id)
  end

end
