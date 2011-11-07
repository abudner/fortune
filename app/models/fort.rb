class Fort < ActiveRecord::Base
has_many :comments, :dependent => :destroy

def self.search(search)
  if search
    where('body LIKE ?', "%#{search}%")
  else
    scoped
  end
end
end
