class MuralController < ApplicationController

  def index
    if @posts.present?

    else
      @posts = Post.all
    end
  end

  def filtro
    @posts = Post.where(nil)
    @posts = @posts.filter_by_animal(params[:animal]) if params[:animal].present?
    render :index, status: :unprocessable_entity, content_type: "text/html"
    headers["Content-Type"] = "text/html"
  end

end
