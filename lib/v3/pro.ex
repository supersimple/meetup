defmodule Meetup.V3.Pro do
  @moduledoc """
  Handles endpoints related to meetup pros.
  """

  @doc """
  Name and statistics range search for the meetup groups belonging to Pro organization.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/pro/:urlname/groups/
  """
  @spec groups(String.t(), map()) :: tuple()
  def groups(urlname, params) do
    method = :get
    path = "pro/#{urlname}/groups"
  end

  @doc """
  Name, location, and time based search for the members of the meetups belonging
  to Pro organization
  For available params, see:
  https://www.meetup.com/meetup_api/docs/pro/:urlname/members/
  """
  @spec members(String.t(), map()) :: tuple()
  def members(urlname, params) do
    method = :get
    path = "pro/#{urlname}/members"
  end

  @doc """
  Redeemed chapter, redeemed member, status, and timestamp for tickets belonging
  to Pro organization.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/pro/:urlname/tickets/
  """
  @spec tickets(String.t(), map()) :: tuple()
  def tickets(urlname, params) do
    method = :get
    path = "pro/#{urlname}/tickets"
  end
end
