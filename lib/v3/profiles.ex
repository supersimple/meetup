defmodule Meetup.V3.Profiles do
  def membership_approvals(urlname, params) do
    method = :post
    path = "#{urlname}/member/approvals"
  end

  def membership_decline(urlname, params) do
    method = :delete
    path = "#{urlname}/member/approvals"
  end

  def members_list(urlname, params) do
    method = :get
    path = "#{urlname}/members"
  end

  def members_join(urlname, params) do
    method = :post
    path = "#{urlname}/members"
  end

  def group_profile(urlname, member_id, params) do
    method = :get
    path = "#{urlname}/members/#{member_id}"
  end

  def edit_member_profile(urlname, member_id, params) do
    method = :patch
    path = "#{urlname}/members/#{member_id}"
  end

  def delete_member_profile(urlname, member_id, params) do
    method = :delete
    path = "#{urlname}/members/#{member_id}"
  end

  def members_search(urlname, params) do
    method = :get
    path = "find/#{urlname}/members"
  end

  def member_profile(member_id, params) do
    method = :get
    path = "members/#{member_id}"
  end

  def member_profile_edit(member_id, params) do
    method = :patch
    path = "members/#{member_id}"
  end
end
