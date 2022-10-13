class PerfilController < ApplicationController
    def new
      @perfil = Perfil.new
    end

    def create
        @perfil = Perfil.new(perfil_params) 
        if @perfil.save
            redirect_to @perfil
        else
          render :new, status: :unprocessable_entity, content_type: "text/html"
          headers["Content-Type"] = "text/hmtl"
      end
    end
    
      private
      def perfil_params
        params.require(:perfil).permit(:nome, :email, :telefone, :senha)
      end
end
