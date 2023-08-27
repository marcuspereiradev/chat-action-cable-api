class NotificationsController < ApplicationController
  def create
    return head :bad_request unless all_params?

    Notification.create!(
      user_id: params[:user_id],
      message: params[:message]
    )

    head :ok
  end

  private

  def all_params?
    params[:message].present? && params[:user_id].present?
  end
end
