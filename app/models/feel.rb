class Feel < ActiveRecord::Base
  belongs_to :feeler, foreign_key: :feeler_id, class_name: "User"
  belongs_to :discomforts, foreign_key: :discomfort_id, class_name: "Discomfort"
  belongs_to :comforts, foreign_key: :comfort_id, class_name: "Comfort"
end
