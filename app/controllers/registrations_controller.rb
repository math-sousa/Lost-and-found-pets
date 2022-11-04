class RegistrationsController < Devise::RegistrationsController

    protected
    
    # def user_update_params
    #   accessible = [:name, :phone, :email]
    #   params.require(:perfil).permit(accessible)
    # end
  
    def update_resource(resource, params)
      resource.update_without_password(params)<<[:name]
    end

end