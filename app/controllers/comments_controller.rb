class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(:article => @article, :text => params[:comment][:text])
    respond_to do |format|
      if @comment.save
        format.html {render @article}
        format.js
      else
        format.html {render @article}
        format.js {render :alert => @comment.errors, :status  => :unprocessable_entity}
      end
    end
  end

end