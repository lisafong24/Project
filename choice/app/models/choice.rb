class Choice < ActiveRecord::Base
  belongs_to :User
  belongs_to :Category
  belongs_to :Brand
end
