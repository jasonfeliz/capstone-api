# frozen_string_literal: true

class User
  include ActiveModel::SecurePassword
  include Mongoid::Document
  include Mongoid::Timestamps
  include Authentication


  field :email, type: String
  field :token, type: String
  field :password_digest, type: String
  index({ email: 1, token: 1 }, { unique: true })

end
