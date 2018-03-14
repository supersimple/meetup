defmodule Meetup.V3.Rsvps do
  @moduledoc """
  Handles endpoints related to event RSVPs.
  """

  @doc """
  Retrieves list of event RSVPs.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/rsvps/#list
  """
  @spec index(String.t(), integer(), map()) :: tuple()
  def index(urlname, event_id, params) do
    method = :get
    path = "#{urlname}/events/#{event_id}/rsvps"
  end

  @doc """
  Creates or updates an existing RSVP.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/rsvps/
  """
  @spec create_or_update(String.t(), integer(), map()) :: tuple()
  def create_or_update(urlname, event_id, params) do
    method = :post
    path = "#{urlname}/events/#{event_id}/rsvps"
  end
end
