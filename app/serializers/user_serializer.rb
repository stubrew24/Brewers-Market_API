class UserSerializer < ActiveModel::Serializer
	attributes :id, :first_name, :last_name, :email, :dob, :tel, :profile_img, :address_line_1, :address_line_2, :city, :postcode, :brewery, :orders
end