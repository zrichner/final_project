class Region < ApplicationRecord
  # Direct associations

  has_many   :users,
             :dependent => :destroy

  has_many   :stateorcountries,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
