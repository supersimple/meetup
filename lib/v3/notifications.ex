defmodule Meetup.V3.Notifications do
  @moduledoc """
  Handles endpoints related to meetup notifications.
  """

  @doc """
  Returns all recent Meetup notifications for the authorized member.
  To mark notifications read use /notifications/read endpoint.
  To get the authenticated Member's current unread count,
  request it in an HTTP header.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/notifications/
  """
  @spec index(map()) :: tuple()
  def index(params) do
    path = "notifications"
    Meetup.get(path, params)
  end

  @doc """
  Marks groups of notifications as clicked.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/notifications/clicked/
  """
  @spec clicked(integer()) :: tuple()
  def clicked(params) do
    path = "notifications/clicked"
    Meetup.post(path, params)
  end

  @doc """
  Marks groups of notifications as read.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/notifications/read/
  """
  @spec read(map()) :: tuple()
  def read(params) do
    path = "notifications/read"
    Meetup.post(path, params)
  end
end
