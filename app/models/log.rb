class Log < ActiveRecord::Base
  belongs_to :student

  def get_face
    type_of_contact = self.type_of_contact
    if type_of_contact == "Positive"
      "/assets/happy-face.png"
    elsif  type_of_contact == "Negative"
      "/assets/sad-face.jpg"
    else
      "/assets/neutral-face.jpg"
    end
  end



end
