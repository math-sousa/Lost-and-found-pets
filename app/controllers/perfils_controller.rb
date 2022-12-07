class PerfilsController < ApplicationController
   
    def show
        @perfil = Perfil.find(params[:id])
    end

    def show_comments
        @perfil = Perfil.find(params[:id])
        @comments = Comment.where(perfil_id: @perfil.id)
    end
    
end
