class Post < ActiveRecord::Base
  has_one :category
  has_many :tags, :through => :poststags
  
  scope :code, -> { where(:category_id => 2) }
  scope :life, -> { where(:category_id => 1) }
  scope :about, -> { where(:category_id => 3) }
end
