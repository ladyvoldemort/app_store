class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include DeviseTokenAuth::Concerns::User
    # serialize :wishlist, Array

    # def self.wishlist(ids)
    #   ids = ids.empty? ? [0] : ids
    #   Store.where("id IN (?)", ids)
    # end
    
    # def self.add_wishlist(ids)
    #   ids = ids.empty? ? [0] : ids
    #   Store.where("id NOT IN (?)", ids)
    # end


end
