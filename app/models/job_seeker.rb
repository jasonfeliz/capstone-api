class JobSeeker
  include Mongoid::Document
  include Mongoid::Timestamps

  # document records
  field :skills, type:Array
  field :about_me, type:String
  field :job_title, type:String
  field :location, type:String
  field :resume_link, type:String
  field :code_wars_username, type:String
  field :code_wars_api_key, type:String
  field :linkedin_link, type:String
  field :github_link, type:String
  field :bootcamp, type:String

  #relationships
  belongs_to :user
  has_many :bookmarks

  def job_posts
    JobPost.in(id: bookmarks.pluck(:job_post_id))
  end
end
