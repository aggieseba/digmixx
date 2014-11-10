class MixTag < ActiveRecord::Base
  belongs_to :mix
  belongs_to :tag
end
