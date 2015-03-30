class Province < ActiveRecord::Base
	has_many :localities
end
