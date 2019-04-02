class Node < ApplicationRecord
  has_many :edges
  accepts_nested_attributes_for :edges, allow_destroy: true
end
