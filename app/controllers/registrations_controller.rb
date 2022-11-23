class RegistrationsController < Devise::RegistrationsController

  

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def edit
    @posts = current_perfil.posts
    super
  end

  def update
    @posts = current_perfil.posts
    super
  end

end