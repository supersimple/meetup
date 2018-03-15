defmodule Meetup.V3.Groups do
  @moduledoc """
  Handles endpoints related to meetup groups.
  """

  @doc """
  Fetches a Meetup group by urlname.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/#get
  """
  def show(urlname, params) do
    path = "#{urlname}"
    Meetup.get(path, params)
  end

  @doc """
  Allows organizers to edit their Meetup group information.
  To change group topics, see the add and remove topics endpoints.
  To change group photo use the Group photo upload endpoint.
  OAuth authenticated requests require an additional group_edit permission.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/#edit
  """
  @spec edit(String.t(), map()) :: tuple()
  def edit(urlname, params) do
    path = "#{urlname}"
    Meetup.post(path, params)
  end

  @doc """
  Renders a list of similar groups.
  """
  @spec similar_groups(String.t()) :: tuple()
  def similar_groups(urlname) do
    path = "#{urlname}/similar_groups"
    Meetup.get(path, %{})
  end

  @doc """
  Associates topics with a given Meetup group.
  Limited to organizers of the group. OAuth authenticated requests require an
  additional group_edit permission.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/topics/#add
  """
  @spec topics(atom(), String.t(), map()) :: tuple()
  def topics(:post, urlname, params) do
    path = "#{urlname}/topics"
    Meetup.post(path, params)
  end

  @doc """
  Disassociates topics with a given Meetup group.
  Limited to organizers of the group.
  OAuth authenticated requests require an additional group_edit permission.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/topics/#remove
  """
  @spec topics(atom(), String.t(), map()) :: tuple()
  def topics(:delete, urlname, params) do
    path = "#{urlname}/topics"
    Meetup.delete(path, params)
  end

  @doc """
  Text, location, category and friend-based group searches
  For available params, see:
  https://www.meetup.com/meetup_api/docs/find/groups/
  """
  @spec find(map()) :: tuple()
  def find(params) do
    path = "find/groups"
    Meetup.get(path, params)
  end

  @doc """
  Returns groups Meetup finds relevant to you.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/recommended/groups/
  """
  @spec recommended(map()) :: tuple()
  def recommended(params) do
    path = "recommended/groups"
    Meetup.get(path, params)
  end

  @doc """
  Provides a form of feedback by requesting to remove a group from future recommendations.
  """
  @spec recommended_ignore(String.t()) :: tuple()
  def recommended_ignore(urlname) do
    path = "recommended/groups/ignores/#{urlname}"
    Meetup.post(path, %{})
  end

  @doc """
  Lists the authenticated member's groups in the order of leadership,
  next upcoming event, then alphabetical order by name.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/self/groups/
  """
  @spec my_groups(map()) :: tuple()
  def my_groups(params) do
    path = "self/groups"
    Meetup.get(path, params)
  end
end
