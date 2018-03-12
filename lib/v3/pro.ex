defmodule Meetup.V3.Pro do
  def groups(urlname, params) do
    method = :get
    path = "pro/#{urlname}/groups"
  end

  def members(urlname, params) do
    method = :get
    path = "pro/#{urlname}/members"
  end

  def tickets(urlname, params) do
    method = :get
    path = "pro/#{urlname}/tickets"
  end
end
