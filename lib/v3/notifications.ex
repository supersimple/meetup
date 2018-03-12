defmodule Meetup.V3.Notifications do
  def index(params) do
    method = :get
    path = "notifications"
  end

  def clicked(notif_id) do
    method = :post
    path = "notifications/clicked"
  end

  def read(params) do
    method = :post
    path = "notifications/read"
  end
end
