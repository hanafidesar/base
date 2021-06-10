# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController

	def create
		build_resource(sign_up_params)
		resource.save
		sign_up(resource_name, resource) if resource.persisted?
	
		render_jsonapi_response(resource)
	end

	def sign_up_params
		params.require(:sign_up).permit(:email,:password,:password_confirmation)
	end
end