class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :user, :company_link, :company_name,:company_description

  def user
    {
      user_id: self.object.user.id,
      full_name: self.object.user.first_name + " " + self.object.user.last_name,
      user_type: self.object.user.user_type,
      email: self.object.user.email
    }
  end
end
