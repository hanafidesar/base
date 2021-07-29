# app/controllers/sessions_controller.rb
class SessionsController < Devise::SessionsController

  private

  def respond_with(resource, _opts = {})
    # render_jsonapi_response(resource)
    @data = {
      token: current_token,
      email: resource.email
    }
    render json: { :data => @data, :status => 200 }

  end

  def respond_to_on_destroy
    head :no_content
  end

  def current_token
    request.env['warden-jwt_auth.token']
  end
end