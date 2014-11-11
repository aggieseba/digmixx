class Mix < ActiveRecord::Base
  has_many :mix_tags
  has_many :tags, :through => :mix_tags
end
