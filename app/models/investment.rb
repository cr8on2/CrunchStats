class Investment < ActiveRecord::Base
	belongs_to :entity, :class_name => "Entity", :foreign_key => :entity_funding_id
	belongs_to :funding_round

end
