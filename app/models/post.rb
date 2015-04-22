class Post < ActiveRecord::Base
  has_many :categories
  has_many :tags, :through => :poststags
end
