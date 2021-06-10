class SerializableUser < JSONAPI::Serializable::Resource
	type 'users'

	attributes :email
	attributes :password
	
	# link :self do
	# 	@url_helpers.api_user_url(@object.id)
	# end
end