defmodule Meetup.V3.Hosts do
  @moduledoc """
  Handles endpoints related to meetup hosts.
  """

  @doc """
  Returns the list of hosts for a given event.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/hosts/
  """
  @spec show(String.t(), String.t(), map()) :: tuple()
  def show(urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/hosts"
    Meetup.get(path, params)
  end
end
