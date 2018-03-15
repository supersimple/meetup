defmodule Meetup.V3.Boards do
  @moduledoc """
  Handles endpoints related to meetup discussion boards.
  """
  @doc """
  Listings of Group discussion boards.
  The :urlname path element may be any valid group urlname or domain name.
  """
  @spec index(String.t()) :: tuple()
  def index(urlname) do
    path = "#{urlname}/boards"
    Meetup.get(path, %{})
  end

  @doc """
  Listings of group discussions.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/boards/:bid/discussions/
  """
  @spec discussions(String.t(), integer()) :: tuple()
  def discussions(urlname, bid) do
    path = "#{urlname}/boards/#{bid}/discussions"
    Meetup.get(path, %{})
  end

  @doc """
  Listing Group discussion posts.
  """
  @spec discussions(String.t(), integer(), integer()) :: tuple()
  def discussions(urlname, bid, did) do
    path = "#{urlname}/boards/#{bid}/discussions/#{did}"
    Meetup.get(path, %{})
  end
end
