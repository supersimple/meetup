defmodule Meetup.V3.Rsvps do
  def index(urlname, event_id, params) do
    method = :get
    path = "#{urlname}/events/#{event_id}/rsvps"
  end

  def create_or_update(urlname, event_id, params) do
    method = :post
    path = "#{urlname}/events/#{event_id}/rsvps"
  end
end
