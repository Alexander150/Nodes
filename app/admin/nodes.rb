ActiveAdmin.register Node do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :body, :edge_id

form do |f|
	f.inputs do
		f.input :name
		f.input :body, label: "Код страницы: "
		f.input :edge_id, label: "Какие ссылки содержит: ", as: :select, collection: Edge.all.map{|x| [x.name, x.id]} 
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
