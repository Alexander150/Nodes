class NodesController < ApplicationController
  def index
  	@node = Node.all
  end
end
