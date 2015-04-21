class Commonname < ActiveRecord::Base
  belongs_to :kind
  has_many :tratamientos
  has_many :animals
end
