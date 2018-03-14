defmodule Meetup.V3.Geo do
  @moduledoc """
  Handles endpoints related to meetup locations.
  """

  @doc """
  Provides a query interface for finding known locations.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/find/locations/
  """
  @spec locations(map()) :: tuple
  def locations(params) do
    method = :get
    path = "find/locations"
  end
end
