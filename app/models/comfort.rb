class Comfort < ActiveRecord::Base
  has_many :feels, foreign_key: :comfort_id
end
