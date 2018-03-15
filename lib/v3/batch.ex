defmodule Meetup.V3.Batch do
  @moduledoc """
  Performs multiple API requests in batch, useful for reducing HTTP network requests.
  This method is only available for OAuth authentication
  """

  @doc """
  For details, see:
  https://www.meetup.com/meetup_api/docs/batch/
  """
  @spec batch() :: tuple()
  def batch do
    path = "batch"
    Meetup.post(path, %{})
  end
end
