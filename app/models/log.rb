class Log < ActiveRecord::Base
  belongs_to :student

  def get_color
    type_of_contact = self.type_of_contact
    if type_of_contact == "Positive"
      "green"
    else
      "red"
    end
  end



end
