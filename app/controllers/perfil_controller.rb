class PerfilController < ApplicationController
    def new
    end
    def create
        @perfil = Perfil.new(perfil_params) 
        if @perfil.save
            redirect_to '/perfil/'
      end
    end
    def login
    end
    
      private
      def perfil_params
        params.require(:perfil).permit(:nome, :email, :telefone, :senha)
      end
end
