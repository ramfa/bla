class Entry < ActiveRecord::Base
  belongs_to :origin
  belongs_to :animal
end
