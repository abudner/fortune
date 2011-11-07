class Comment < ActiveRecord::Base
  belongs_to :fort
validates :author, :presence => true
  validates :body, :presence => true
end
