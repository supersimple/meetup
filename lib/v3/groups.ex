defmodule Meetup.V3.Groups do
  def show(urlname, params) do
    method = :get
    path = "#{urlname}"
  end

  def edit(urlname, params) do
    method = :post
    path = "#{urlname}"
  end

  def similar_groups(urlname) do
    method = :get
    path = "#{urlname}/similar_groups"
  end

  def topics(:post, urlname, params) do
    path = "#{urlname}/topics"
  end

  def topics(:delete, urlname, params) do
    path = "#{urlname}/topics"
  end

  def find(params) do
    method = :get
    path = "find/groups"
  end

  def recommended(params) do
    method = :get
    path = "recommended/groups"
  end

  def recommended_ignore(urlname) do
    method = :post
    path = "recommended/groups/ignores/#{urlname}"
  end

  def my_groups(params) do
    method = :get
    path = "self/groups"
  end
end
