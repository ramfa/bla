class History < ActiveRecord::Base
  belongs_to :animal
  belongs_to :tratamiento
end
