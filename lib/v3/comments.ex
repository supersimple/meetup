defmodule Meetup.V3.Comments do
  @moduledoc """
  Handles endpoints related to meetup event comments.
  """

  @doc """
  Lists the comments and replies posted in a given Meetup Event.
  To view the list of likes for a comment or reply see the likes endpoint.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/comments/#list
  """
  @spec event_comments(String.t(), integer(), map()) :: tuple()
  def event_comments(urlname, event_id, params) do
    method = :get
    path = "#{urlname}/events/#{event_id}/comments"
  end

  @doc """
  Creates new comments and replies to existing comments within an Meetup event.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/comments/#create
  """
  @spec event_comment(atom(), String.t(), integer(), map()) :: tuple()
  def event_comment(:post, urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/comments"
  end

  @doc """
  Deletes comments posted in events.
  """
  @spec event_comment(atom(), String.t(), integer(), integer()) :: tuple()
  def event_comment(:delete, urlname, event_id, comment_id) do
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}"
  end

  @doc """
  Returns lists of likes for an event comment or reply.
  """
  @spec comment_likes(String.t(), integer(), integer()) :: tuple()
  def comment_likes(urlname, event_id, comment_id) do
    method = :get
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}/likes"
  end

  @doc """
  Like a given event comment.
  """
  @spec comment_like(String.t(), integer(), integer()) :: tuple()
  def comment_like(urlname, event_id, comment_id) do
    method = :post
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}/likes"
  end

  @doc """
  Unlike a given event comment.
  """
  @spec comment_unlike(String.t(), integer(), integer()) :: tuple()
  def comment_unlike(urlname, event_id, comment_id) do
    method = :delete
    path = "#{urlname}/events/#{event_id}/comments/#{comment_id}/likes"
  end
end
