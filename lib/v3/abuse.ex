defmodule Meetup.V3.Abuse do
  def abuse_reports(urlname) do
    method = :post
    path = "#{urlname}/abuse_reports"
  end

  def abuse_reports do
    method = :post
    path = "self/abuse_reports"
  end

  def blocks(:get, member_id) do
    path = "self/blocks/#{member_id}"
  end

  def blocks(:post, member_id) do
    path = "self/blocks/#{member_id}"
  end

  def blocks(:delete, member_id) do
    path = "self/blocks/#{member_id}"
  end
end
