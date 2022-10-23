class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :full_name

  def full_name
    if object.middle_name.nil? 
      return "#{object.first_name} #{object.last_name}" 
    else
      return "#{object.first_name} #{object.middle_name} #{object.last_name}"
    end
  end
end
