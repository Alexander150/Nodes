# require 'erb'
class NodesController < ApplicationController
  def index
  	@nodes = Node.all
  end

  def show
  	@node = Node.find(params[:id])
  	if @node.id == Node.last.id
  		#
  	else
  		edge = Edge.find_by id: @node.edges.ids
	  	next_node_id = Node.where(id: edge.target_node_id).ids # Здесь надо делать не +1, а искать следующий нод через target_node_id
	  	next_node = Node.find_by id: next_node_id
	  	@edge_count = edge.count
	  	@metric_name = edge.metric.name
	  	if edge.metric.metric_type == true
	  		next_node.update(:count => @node.count + edge.count)
	  	else
	  		next_node.update(:count => @node.count - edge.count)
		end
	  	next_node.update(:count => @node.count - edge.count)
	end
	@current_count = @node.count
  end
end
