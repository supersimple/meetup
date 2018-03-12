defmodule Meetup.V3.Comments do
  def event_comments(urlname, event_id) do
    method = :get
    path = "#{urlname}/events/#{event_id}/comments"
  end

  def event_comment(:post, urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/comments"
  end

  def event_comment(:delete, urlname, event_id, comment_id) do
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}"
  end

  def comment_likes(urlname, event_id, comment_id) do
    method = :get
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}/likes"
  end

  def comment_like(urlname, event_id, comment_id) do
    method = :post
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}/likes"
  end

  def comment_unlike(urlname, event_id, comment_id) do
    method = :delete
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}/likes"
  end
end
