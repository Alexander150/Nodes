ActiveAdmin.register Edge do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :node_id, :target_node_id, :metric_id, :count

form do |f|
	f.inputs do
		f.input :name
		f.input :node_id, label: "Принадлежит ноду: ", as: :select, collection: Node.all.map{|x| [x.name, x.id]} 
		f.input :target_node_id,label: "Ведет на нод: ", as: :select, collection: Node.all.map{|x| [x.name, x.id]}
		f.input :metric_id,label: "Какое дейсвие совершает: ", as: :select, collection: Metric.all.map{|x| [x.name, x.id]} 
		f.input :count, label: "Сколько вычесть/прибавить: " 
	end
	f.actions
end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
