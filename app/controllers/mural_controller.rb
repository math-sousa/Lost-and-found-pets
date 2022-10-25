class MuralController < ApplicationController
  def index
    @posts = Post.all
    @comment = Comment.new
  end

  def create_comment
    @comment = Post.find_by(id: comment_params[:post]).comments.create(content: comment_params[:content])
    @posts = Post.all
    render :index, status: :unprocessable_entity, content_type: "text/html"
    headers["Content-Type"] = "text/html"
  end

  private def comment_params 
    params.require(:comment).permit(:content, :post)
  end
end
