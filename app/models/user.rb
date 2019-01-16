# frozen_string_literal: true

class User
  include ActiveModel::SecurePassword
  include Mongoid::Document
  include Mongoid::Timestamps
  include Authentication


  field :first_name, type: String
  field :last_name, type: String
  field :user_type, type: String
  field :email, type: String
  field :token, type: String
  field :password_digest, type: String
  index({ token: 1 }, { unique: true })

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_type, presence: true


  # relationships
  has_many :job_seekers
end
