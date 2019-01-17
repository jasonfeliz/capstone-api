class JobPostSerializer < ActiveModel::Serializer
  attributes :id, :employer, :job_title, :job_description, :desired_skills


  def employer
    {
      employer_id: self.object.employer.id,
      creator_id: self.object.employer.user_id,
      company_name: self.object.employer.company_name
    }
  end
end
