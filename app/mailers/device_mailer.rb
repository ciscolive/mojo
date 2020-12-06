class DeviceMailer < ApplicationMailer
	default :from => "WENWU YAN <netstack@126.com>"

	def notify_change(user, comment)
		@user    = user
		@comment = comment
		mail to: @user.email, subject: "【邮件通知】"
	end
end
