class Edge < ApplicationRecord
	belongs_to :node
	has_one :target_node, class_name: "Node", foreign_key: "target_node_id"
	has_many :metrics
	accepts_nested_attributes_for :metrics, allow_destroy: true

	belongs_to :act
end