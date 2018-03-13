defmodule Meetup.V3.Batch do
  @moduledoc """
  Performs multiple API requests in batch, useful for reducing HTTP network requests.
  This method is only available for OAuth authentication
  """

  @doc """
  For details, see:
  https://www.meetup.com/meetup_api/docs/batch/
  """
  def batch do
    method = :post
    path = "batch"
  end
end
