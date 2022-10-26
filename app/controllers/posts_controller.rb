class PostsController < ApplicationController
    def new
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end
    def show
        @post = Post.find(params[:id])
    end
    def post_params 
        params.require(:post).permit(:titulo, :descricao, :tipo)
    end
end
