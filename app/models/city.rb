class City < ApplicationRecord
  # Direct associations

  belongs_to :stateorcountry

  has_many   :users,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
