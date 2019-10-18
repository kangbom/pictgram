class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    # binding.pry
    @comment = Comment.new(content: params[:comment][:content], topic_id: params[:comment][:topic_id])
    if @comment.save
      redirect_to favorites_index_path, success: "コメントが投稿されました。"
    else
      flash.now[:danger] = "コメントの投稿に失敗しました。"
      render :new
    end
  end
end