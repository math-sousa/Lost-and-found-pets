class MuralController < ApplicationController
  def index
    @posts = Post.all
  end
end
