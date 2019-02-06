class JobPost
  include Mongoid::Document
  include Mongoid::Timestamps

  # document recordds
  field :job_title, type:String
  field :job_description, type:String
  field :desired_skills, type:Array

  # relationships
  belongs_to :user
  has_many :bookmarks, dependent: :destroy

  def job_seekers
    JobSeeker.in(id: bookmarks.pluck(:job_seeker_id))
  end



  #validations
  validates_presence_of :job_title, :job_description

end
