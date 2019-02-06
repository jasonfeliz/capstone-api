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

  validates_presence_of :first_name, :last_name, :user_type

  # relationships
  has_many :job_seekers, dependent: :destroy
  has_many :employers, dependent: :destroy
  has_many :job_posts, dependent: :destroy
end
