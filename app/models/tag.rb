class Tag < ActiveRecord::Base
  has_many :mix_tags
  has_many :mixes, :through => :mix_tags
end
