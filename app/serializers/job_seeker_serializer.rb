class JobSeekerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :job_title, :skills, :about_me, :location, :code_wars_username,
              :code_wars_api_key, :resume_link, :linkedin_link, :github_link
end
