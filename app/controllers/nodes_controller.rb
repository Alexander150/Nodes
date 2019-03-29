# require 'erb'
class NodesController < ApplicationController
  def index
  	@nodes = Node.all

  	# body = ERB.new(@node.body)
  	# @html = body.result(binding)
  end

  def show
  	@node = Node.find(params[:id])
  end

  def say_hi
  	render plain: "HI"
  end
end
