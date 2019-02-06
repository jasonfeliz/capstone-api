class JobSeekerSerializer < ActiveModel::Serializer
  attributes :id, :user, :job_title,:bootcamp, :skills, :about_me, :location, :code_wars_username,
              :code_wars_api_key, :resume_link, :linkedin_link, :github_link

  def user
    {
      user_id: self.object.user.id,
      full_name: self.object.user.first_name + " " + self.object.user.last_name,
      user_type: self.object.user.user_type,
      email: self.object.user.email
    }
  end
end
