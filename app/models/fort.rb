class Fort < ActiveRecord::Base
has_many :comments, :dependent => :destroy

def self.search(search)
  if search
    where('source LIKE ?', "%#{search}%")
  else
    scoped
  end
end

end
