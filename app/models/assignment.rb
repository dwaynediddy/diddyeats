class Assignment < ApplicationRecord
  belongs_to :patron
  belongs_to :role
end
