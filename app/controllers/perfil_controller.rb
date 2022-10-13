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
    def login
      
    end
    def process_login
      perfil = Perfil.authenticate(params[:email], params[:senha])
      if(perfil)
        session[:user_id]=perfil.id
        redirect_to '/posts', :notice=>'logado'
      else
        flash.now.alert = 'Email e/ou senha inválidos'
        render 'login'
      end
    end

    def meu_perfil
      if(session[:user_id]!=nil)
        @sessionName = perfil.find(session[:user_id]).nome
      else
        @sessionName = 'convidade'
      end
    end
    
      private
      def perfil_params
        params.require(:perfil).permit(:nome, :email, :telefone, :senha)
      end
end
