defmodule Meetup.V3.Meta do
  @moduledoc """
  Handles endpoints related to meetup meta.
  """

  @doc """
  Returns the current API service status.
  """
  def status do
    method = :get
    path = "status"
  end
end
