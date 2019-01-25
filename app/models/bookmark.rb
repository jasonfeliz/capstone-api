class Bookmark
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  #relationships
  belongs_to :job_post
  belongs_to :job_seeker
end
