class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  validates_uniqueness_of :title
  
  def to_param
    title
  end
  
  def self.find(input)
    if input.to_i != 0
      super
    else
      find_by_title(input)
    end
  end
end
