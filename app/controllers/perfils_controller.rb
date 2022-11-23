class PerfilsController < ApplicationController
   
    def show
        @perfil = Perfil.find(params[:id])
    end
end
