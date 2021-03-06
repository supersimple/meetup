defmodule Meetup.V3.Events do
  @moduledoc """
  Handles endpoints related to meetup events.
  """

  @doc """
  Gets a listing of all Meetup Events hosted by a target group, in ascending order by default.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/#list
  """
  @spec index(String.t(), map()) :: tuple()
  def index(urlname, params) do
    path = "#{urlname}/events"
    Meetup.get(path, params)
  end

  @doc """
  Creates a new Meetup group event.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/#create
  """
  @spec create(String.t(), map()) :: tuple()
  def create(urlname, params) do
    path = "#{urlname}/events"
    Meetup.post(path, params)
  end

  @doc """
  Closes rsvps for an event.
  """
  @spec close_rsvps(String.t(), String.t()) :: tuple()
  def close_rsvps(urlname, event_id) do
    path = "#{urlname}/events/#{event_id}/rsvps/close"
    Meetup.post(path, %{})
  end

  @doc """
  Opens rsvps for an event.
  """
  @spec open_rsvps(String.t(), String.t()) :: tuple()
  def open_rsvps(urlname, event_id) do
    path = "#{urlname}/events/#{event_id}/rsvps/open"
    Meetup.post(path, %{})
  end

  @doc """
  Fetches a Meetup Event by group urlname and event_id.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:id/#get
  """
  @spec show(String.t(), String.t(), map()) :: tuple()
  def show(urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}"
    Meetup.get(path, params)
  end

  @doc """
  Updates an existing Meetup group event's details.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:id/#edit
  """
  @spec update(String.t(), String.t(), map()) :: tuple()
  def update(urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}"
    Meetup.patch(path, params)
  end

  @doc """
  Cancels or removes an event from a groups calendar.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:id/#delete
  """
  @spec delete(String.t(), String.t(), map()) :: tuple()
  def delete(urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}"
    Meetup.delete(path, params)
  end

  @doc """
  Lists attendance records for Meetup events.
  Getting the list of attendance records for private groups is limited only to
  members of that group. The endpoint returns all members that have rsvped 'yes'
  or 'no' and members that were marked as either 'attended', 'noshow', or 'absent'.
  """
  @spec attendance(atom(), String.t(), String.t()) :: tuple()
  def attendance(:get, urlname, event_id) do
    path = "#{urlname}/events/#{event_id}/attendance"
    Meetup.get(path)
  end

  @doc """
  Takes member attendance for an event. Limited for use by administrative members.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:id/attendance/#edit
  """
  @spec attendance(atom(), String.t(), String.t(), map()) :: tuple()
  def attendance(:post, urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/attendance"
    Meetup.post(path, params)
  end

  @doc """
  Allows organizers of a group to note payments made by members for an event.
  This is the 'Mark Paid' feature seen in the RSVP listings on event details
  pages and affects the 'pay_status' response fields in 2/rsvps for paid events.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:id/payments/
  """
  @spec payments(String.t(), String.t(), map()) :: tuple()
  def payments(urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/payments"
    Meetup.post(path, params)
  end

  @doc """
  Returns a list of upcoming events.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/find/upcoming_events/
  """
  @spec upcoming_events(map()) :: tuple()
  def upcoming_events(params) do
    path = "find/upcoming_events"
    Meetup.get(path, params)
  end

  @doc """
  Get a listing of all upcoming Meetup events for the authenticated member.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/self/calendar/#list
  """
  @spec my_calendar(map()) :: tuple
  def my_calendar(params) do
    path = "self/calendar"
    Meetup.get(path, params)
  end

  @doc """
  Gets a listing of all scheduled Meetup Events the authenticated member has
  RSVP'd to that have been announced to the group.
  This listing is ordered from oldest to most recent by default.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/self/events/
  """
  def my_events(params) do
    path = "self/events"
    Meetup.get(path, params)
  end
end
