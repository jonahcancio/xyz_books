class Author < ApplicationRecord
    has_and_belongs_to_many :books

    def full_name
        if self.middle_name.nil? 
            return "#{self.first_name} #{self.last_name}" 
        else
            return "#{self.first_name} #{self.middle_name} #{self.last_name}"
        end
    end
end
