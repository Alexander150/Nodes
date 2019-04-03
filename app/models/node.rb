class Node < ApplicationRecord
  has_many :edges
  accepts_nested_attributes_for :edges, allow_destroy: true

  has_many :metrics
  accepts_nested_attributes_for :metrics, allow_destroy: true

end
