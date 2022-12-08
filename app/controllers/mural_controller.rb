class MuralController < ApplicationController
  def index
    @posts = nil
    if params[:encontrado] == 'true'
      @posts = Post.where(encontrado:'1')
    else
      @posts = Post.all
    end
    @comment = Comment.new
  end

  def create_comment
    @comment = Post.find_by(id: comment_params[:post]).comments.create(content: comment_params[:content], perfil_id: current_perfil.id)
    @posts = Post.all
    render :index, status: :unprocessable_entity, content_type: "text/html"
    headers["Content-Type"] = "text/html"
  end

  private def comment_params 
    params.require(:comment).permit(:content, :post)
  end
end
