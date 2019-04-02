ActiveAdmin.register Node do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :body, :edge_ids, :count, edges_attributes: [
	:name, :node_id, :target_node_id, :act_id, metrics_attributes: [
		:name
	]
]

index do
	column :id
	column "Название нода", :name
	column "Текст нода", :body
	column "Общая сумма в этом ходу", :count
	column "Связанные edges ", :edge_ids
actions
end


form do |f|
	f.inputs do
		f.input :name
		f.input :body, label: "Код страницы: "
		# f.input :edge_id, label: "Какие ссылки содержит: ", as: :select, multiple: true, collection: Edge.all.map{|x| [x.name, x.id]}
		f.input :count, label: "Общая сумма в этом ходу: " 
	end
	f.has_many :edges do |e|
		e.inputs
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
