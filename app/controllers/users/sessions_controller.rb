module Users
  class SessionsController < Devise::SessionsController
    # before_action :configure_sign_in_params, only: [:create]

    # Renders the 'users/sessions/new' template.

    private

    def after_sign_in_path_for(_resource_or_scope)
      centrals_path
    end

    def after_sign_out_path_for(_resource_or_scope)
      new_user_session_path
    end
  end
end
