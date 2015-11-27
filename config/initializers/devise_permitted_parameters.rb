module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name,
                                                            :email,
                                                            :password,
                                                            :confirm_password,
                                                            :cep,
                                                            :street,
                                                            :house_number,
                                                            :complement,
                                                            :neighborhood,
                                                            :city,
                                                            :state)}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name,
                                                            :email,
                                                            :password,
                                                            :confirm_password,
                                                            :current_password,
                                                            :phone,
                                                            :cep,
                                                            :street,
                                                            :house_number,
                                                            :complement,
                                                            :neighborhood,
                                                            :city,
                                                            :state)}
  end

end

DeviseController.send :include, DevisePermittedParameters
