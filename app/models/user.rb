class User < ApplicationRecord
  # Direct associations

  belongs_to :industry

  belongs_to :region

  belongs_to :stateorcountry

  belongs_to :city

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
