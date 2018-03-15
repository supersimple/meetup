defmodule Meetup.V3.Meta do
  @moduledoc """
  Handles endpoints related to meetup meta.
  """

  @doc """
  Returns the current API service status.
  """
  def status do
    path = "status"
    Meetup.get(path, %{})
  end
end
