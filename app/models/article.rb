class Article < ActiveRecord::Base
  has_many :comments


  attr_accessible :text, :title
  validates :text, :title, :presence => true


  def comments_ordered
    comments.order('created_at DESC')

  end


end
