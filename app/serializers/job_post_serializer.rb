class JobPostSerializer < ActiveModel::Serializer
  attributes :id, :user, :job_title, :job_description, :desired_skills

  def user
    {
      user_id: self.object.user.id,
      full_name: self.object.user.first_name + " " + self.object.user.last_name,
      user_type: self.object.user.user_type,
      email: self.object.user.email
    }
  end
end
