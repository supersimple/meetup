defmodule Meetup.V3.Hosts do
  @moduledoc """
  Handles endpoints related to meetup hosts.
  """

  @doc """
  Returns the list of hosts for a given event.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/hosts/
  """
  @spec show(String.t(), integer(), map()) :: tuple()
  def show(urlname, event_id, params) do
    method = :get
    path = "#{urlname}/events/#{event_id}/hosts"
  end
end
