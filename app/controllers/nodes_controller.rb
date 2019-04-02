# require 'erb'
class NodesController < ApplicationController
  def index
  	@first_node = Node.first
  end

  def show
  	@node = Node.find(params[:id])
  	edges = @node.edges
  	edges.each do |e|
  		next_node_id = e.target_node_id
  		next_node = Node.find_by id: next_node_id
		if e.act.act_type == true
			next_node.update(:count => @node.count + e.metrics.count)
		else
			next_node.update(:count => @node.count - e.metrics.count)
		end
	 	@current_count = @node.count
  	end	
  end
end

# Надо добавить талицу метрик в нод, и через нее работать, + цикл после 13 строки, на каждую метрику так делать 