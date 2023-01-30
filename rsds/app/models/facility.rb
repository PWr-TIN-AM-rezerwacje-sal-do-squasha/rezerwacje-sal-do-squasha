class Facility < ApplicationRecord
  belongs_to :company
  has_many :courts
end
