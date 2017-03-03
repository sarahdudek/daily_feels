class Discomfort < ActiveRecord::Base
  has_many :feels, foreign_key: :discomfort_id
end
