class Marketplace < ApplicationRecord
  belongs_to :patron
  has_one_attached :image
  has_many :menu_items
  
  

  
  # only want business role to be able to post on market. when shown ideally would have prices with checkboxes and a checkout button

end
