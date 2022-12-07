class PostsController < ApplicationController
    before_action :authenticate_perfil!

    def new
        @post = Post.new
    end

    def create
        if current_perfil
            @post = current_perfil.posts.create(post_params.merge(perfil: current_perfil))
            if @post.valid?
                redirect_to @post
            else
                render :new, status: :unprocessable_entity, content_type: "text/html"
                headers["Content-Type"] = "text/html"
            end
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        respond_to do |format|
            if @post.update(post_params)
                format.html { redirect_to post_url(@post), notice: "O post foi editado com sucesso." }
                format.json { render :show, status: :ok, location: @classroom }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def post_params 
        params.require(:post).permit(:titulo, :descricao, :tipo, :local, :encontrado, :curtidas)
    end
end
