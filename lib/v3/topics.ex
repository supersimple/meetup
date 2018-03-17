defmodule Meetup.V3.Topics do
  @moduledoc """
  Handles endpoints related to meetup topics.
  """

  @doc """
  Returns a list high level topic categories.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/find/topic_categories/
  """
  @spec categories(map()) :: tuple()
  def categories(params) do
    path = "find/topics_categories"
    Meetup.get(path, params)
  end

  @doc """
  Find topics by name.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/find/topics/
  """
  @spec find(map()) :: tuple()
  def find(params) do
    path = "find/topics"
    Meetup.get(path, params)
  end

  @doc """
  Recommends suggestions for group topics based on a text search or other topics.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/recommended/group_topics/
  """
  @spec recommended(map()) :: tuple()
  def recommended(params) do
    path = "recommended/group_topics"
    Meetup.get(path, params)
  end
end
