class Marketplace < ApplicationRecord
  belongs_to :patron
  has_one_attached :image

  
  # only want business role to be able to post on market. want that post to link to business profile
  # where they can attach many images to the profile.
end
