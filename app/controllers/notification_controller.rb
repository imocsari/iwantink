class NotificationController < ApplicationController

 def create
    Notification.new(notification_params)
    redirect_to_artists_index
 end

  private

  def notification_params
    params.require(:notification).permit(:content)
  end
end
