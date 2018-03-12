defmodule Meetup.V3.Venues do
  def index(urlname, params) do
    method = :get
    path = "#{urlname}/venues"
  end

  def create(urlname, params) do
    method = :post
    path = "#{urlname}/venues"
  end

  def find(params) do
    method = :get
    path = "find/venues"
  end

  def recommended(params) do
    method = :get
    path = "recommended/venues"
  end
end
