defmodule Meetup.V3.Hosts do
  def show(urlname, event_id) do
    method = :get
    path = "#{urlname}/events/#{event_id}/hosts"
  end
end
