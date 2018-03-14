defmodule Meetup.V3.Profiles do
  @moduledoc """
  Handles endpoints related to meetup profiles.
  """

  @doc """
  Approves one or more requests for group membership.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/member/approvals/#create
  """
  @spec membership_approvals(String.t(), map()) :: tuple()
  def membership_approvals(urlname, params) do
    method = :post
    path = "#{urlname}/member/approvals"
  end

  @doc """
  Declines one or more requests for group membership.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/member/approvals/#delete
  """
  @spec membership_decline(String.t(), map()) :: tuple()
  def membership_decline(urlname, params) do
    method = :delete
    path = "#{urlname}/member/approvals"
  end

  @doc """
  Get a list of Meetup group members.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/members/#list
  """
  @spec members_list(String.t(), map()) :: tuple()
  def members_list(urlname, params) do
    method = :get
    path = "#{urlname}/members"
  end

  @doc """
  This method allows an authenticated member to join a group by creating a profile.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/members/#create
  """
  @spec members_join(String.t(), map()) :: tuple()
  def members_join(urlname, params) do
    method = :post
    path = "#{urlname}/members"
  end

  @doc """
  Gets Group Profiles. For Member Profiles, see:
  https://www.meetup.com/meetup_api/docs/members/:member_id

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/members/:member_id/#get
  """
  @spec group_profile(String.t(), integer(), map()) :: tuple()
  def group_profile(urlname, member_id, params) do
    method = :get
    path = "#{urlname}/members/#{member_id}"
  end

  @doc """
  Edits Group Profiles. To fetch Group Member Profiles, see:
  https://www.meetup.com/meetup_api/docs/:urlname/members/:member_id#get

  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/members/:member_id/#edit
  """
  @spec edit_member_profile(String.t(), integer(), map()) :: tuple()
  def edit_member_profile(urlname, member_id, params) do
    method = :patch
    path = "#{urlname}/members/#{member_id}"
  end

  @doc """
  Deletes a member's group profiles.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/members/:member_id/#delete
  """
  @spec delete_member_profile(String.t(), integer(), map()) :: tuple()
  def delete_member_profile(urlname, member_id, params) do
    method = :delete
    path = "#{urlname}/members/#{member_id}"
  end

  @doc """
  Find group member profiles by name.
  Members who very recently joined or left the group may not be immediately searchable.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/find/:urlname/members/
  """
  @spec members_search(String.t(), map()) :: tuple()
  def members_search(urlname, params) do
    method = :get
    path = "find/#{urlname}/members"
  end

  @doc """
  Gets Member Profiles. For Group Profiles, see:
  https://www.meetup.com/meetup_api/docs/:urlname/members/:member_id

  For available params, see:
  https://www.meetup.com/meetup_api/docs/members/:member_id/#get
  """
  @spec member_profile(integer(), map()) :: tuple()
  def member_profile(member_id, params) do
    method = :get
    path = "members/#{member_id}"
  end

  @doc """
  Edit a member profile.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/members/:member_id/#edit
  """
  @spec member_profile_edit(integer(), map()) :: tuple()
  def member_profile_edit(member_id, params) do
    method = :patch
    path = "members/#{member_id}"
  end
end
