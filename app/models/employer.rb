class Employer
  include Mongoid::Document
  include Mongoid::Timestamps

  # document records
  field :company_name, type:String
  field :company_description, type:String
  field :company_link, type:String

  # validations
  validates_presence_of :company_name, :company_description

  #relationships
  belongs_to :user
  has_many :job_posts, dependent: :destroy
end
