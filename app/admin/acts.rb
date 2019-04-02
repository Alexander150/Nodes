ActiveAdmin.register Act do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :act_type

form do |f|
	f.inputs do
		f.input :name, label: "Название действия: "
		f.input :act_type, label: "T/F"
	end
	f.actions
end

index do
	column "Название действия", :name
	column "true - сложение", :act_type
	actions
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
