defmodule Meetup.V3.Topics do
  def categories(params) do
    method = :get
    path = "find/topics_categories"
  end

  def find(params) do
    method = :get
    path = "find/topics"
  end

  def recommended(params) do
    method = :get
    path = "recommended/group_topics"
  end
end
