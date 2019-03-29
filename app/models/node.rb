class Node < ApplicationRecord
  # belongs_to :edge
  has_many :edges
end
