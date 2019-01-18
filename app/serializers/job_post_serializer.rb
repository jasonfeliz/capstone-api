class JobPostSerializer < ActiveModel::Serializer
  attributes :id, :user, :job_title, :job_description, :desired_skills


  # def user
  #   {
  #     user_id: self.object.user.id,
  #   }
  # end
end
