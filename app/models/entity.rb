class Entity < ActiveRecord::Base
	belongs_to :industry

	has_many :investments
	has_many :funding_rounds, :through => :investments

end
