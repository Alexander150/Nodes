# require 'erb'
class NodesController < ApplicationController
  def index
  	@nodes = Node.all
  end

  def show
  	@node = Node.find(params[:id])
  	edges = @node.edges
  	edges.each do |e|
  		next_node_id = e.target_node_id
  		next_node = Node.find_by id: next_node_id
		if e.metric.metric_type == true
			next_node.update(:count => @node.count + e.count)
		else
			next_node.update(:count => @node.count - e.count)
		end
	 	@current_count = @node.count
  	end
  	# for i in edge
  	# 	@next_node_id = i.target_node
  	# 	# @next_node_id = Node.where(id: i.target_node.id).ids 
  	# end
	
  end
end
