class Mix < ActiveRecord::Base
  has_many :mix_tags
  has_many :tags, :through => :mix_tags

  def mixsearch
    scoped = Mix.where("mixname LIKE ?", "#{mixname}") if mixname.present?
  end
end
