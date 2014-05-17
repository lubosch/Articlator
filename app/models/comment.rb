class Comment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :text, :article

  validates :text, :presence => true



end
