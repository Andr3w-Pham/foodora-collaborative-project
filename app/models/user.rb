class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: %i[facebook]
=======
>>>>>>> parent of 8a9cffc... Revert "facebook authenticator feature"

    #For the facebook authenticator
    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]

<<<<<<< HEAD
  def self.from_omniauth(auth)
where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
user.email = auth.info.email
user.password = Devise.friendly_token[0,20]
# user.name = auth.info.name   # assuming the user model has a name
# user.image = auth.info.image # assuming the user model has an image
# If you are using confirmable and the provider(s) you use validate emails,
# uncomment the line below to skip the confirmation emails.
# user.skip_confirmation!
end
=======
         :recoverable, :rememberable, :trackable, :validatable
>>>>>>> parent of 866def3... facebook authenticator feature
=======
         :recoverable, :rememberable, :trackable, :validatable
>>>>>>> parent of 866def3... facebook authenticator feature
end
=======
      end
    end
>>>>>>> parent of 8a9cffc... Revert "facebook authenticator feature"
