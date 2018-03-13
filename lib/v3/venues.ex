defmodule Meetup.V3.Venues do
  @moduledoc """
  Handles endpoints related to meetup venues.
  """

  @doc """
  Returns venues a group has previously hosted events at.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/venues/#list
  """
  @spec index(binary(), map()) :: tuple()
  def index(urlname, params) do
    method = :get
    path = "#{urlname}/venues"
  end

  @doc """
  Interface for creating new Meetup venues.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/venues/#create
  """
  @spec create(binary(), map()) :: tuple()
  def create(urlname, params) do
    method = :post
    path = "#{urlname}/venues"
  end

  @doc """
  Returns list of venues based on location.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/find/venues/
  """
  @spec find(map()) :: tuple()
  def find(params) do
    method = :get
    path = "find/venues"
  end

  @doc """
  Returns venues Meetup finds relevant to you based on location and category.
  This method does not yet support sorting or pagination.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/recommended/venues/
  """
  @spec recommended(map()) :: tuple()
  def recommended(params) do
    method = :get
    path = "recommended/venues"
  end
end
