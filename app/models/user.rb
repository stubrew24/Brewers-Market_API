class User < ApplicationRecord
    belongs_to :brewery
    has_many :orders

    has_secure_password
    
    validates :email, uniqueness: true
end
