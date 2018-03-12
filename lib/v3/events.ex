defmodule Meetup.V3.Events do
  def index(urlname, params) do
    method = :get
    path = "#{urlname}/events"
  end

  def create(urlname, params) do
    method = :post
    path = "#{urlname}/events"
  end

  def close_rsvps(urlname, event_id) do
    method = :post
    path = "#{urlname}/events/#{event_id}/rsvps/close"
  end

  def open_rsvps(urlname, event_id) do
    method = :post
    path = "#{urlname}/events/#{event_id}/rsvps/open"
  end

  def show(urlname, event_id, params) do
    method = :get
    path = "#{urlname}/events/#{event_id}"
  end

  def update(urlname, event_id, params) do
    method = :patch
    path = "#{urlname}/events/#{event_id}"
  end

  def delete(urlname, event_id, params) do
    method = :delete
    path = "#{urlname}/events/#{event_id}"
  end

  def attendance(:get, urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/attendance"
  end

  def attendance(:post, urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/attendance"
  end

  def payments(urlname, event_id, params) do
    method = :post
    path = "#{urlname}/events/#{event_id}/payments"
  end

  def upcoming_events(params) do
    method = :get
    path = "find/upcoming_events"
  end

  def my_calendar(params) do
    method = :get
    path = "self/calendar"
  end

  def my_events(params) do
    method = :get
    path = "self/events"
  end
end
