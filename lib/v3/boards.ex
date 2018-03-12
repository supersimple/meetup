defmodule Meetup.V3.Boards do
  def index(urlname) do
    method = :get
    path = "#{urlname}/boards"
  end

  def discussions(urlname, bid) do
    method = :get
    path = "#{urlname}/boards/bid/discussions"
  end

  def discussions(urlname, bid, did) do
    method = :get
    path = "#{urlname}/boards/#{bid}/discussions/#{did}"
  end
end
