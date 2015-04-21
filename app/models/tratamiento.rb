class Tratamiento < ActiveRecord::Base
  belongs_to :commonname
  has_many :medicins
end
