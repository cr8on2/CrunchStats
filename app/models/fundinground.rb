class Fundinground < ActiveRecord::Base

	belongs_to :entity, :class_name => "Entity", :foreign_key => :entity_receiver_id

	has_many :investments
	has_many :entities, :through => :investments



end
