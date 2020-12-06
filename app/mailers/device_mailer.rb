class DeviceMailer < ApplicationMailer
	def notify_change(user, comment)
		@user    = user
		@comment = comment
		mail to: @user.email, subject: "【邮件通知】"
	end
end
