ActiveAdmin.register Device do

	# See permitted parameters documentation:
	# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	#
	# Uncomment all parameters which should be permitted for assignment
	# 设置实图权限
	actions :all, except: [:update, :destroy]
	#
	permit_params :ip, :hostname, :vendor, :os, :os_ver, :contact, :location, :serail, :snmp_comm
	#
	# or
	#
	#permit_params do
	#	permitted = [:ip, :hostname, :vendor, :os, :os_ver, :contact, :location, :serail, :snmp_comm]
	#	permitted << :other if params[:action] == 'create' && current_user.admin?
	#	permitted
	#end

end
