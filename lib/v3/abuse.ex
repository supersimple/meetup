defmodule Meetup.V3.Abuse do
  @moduledoc """
  Handles endpoints related to meetup abuse.
  """

  @doc """
  Submits a new abuse report for a target group.
  Abuse reports will be followed up on by our Community Support team.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/abuse_reports/
  """
  @spec abuse_reports(String.t(), map()) :: tuple()
  def abuse_reports(urlname, %{type: abuse_type}) do
    method = :post
    path = "#{urlname}/abuse_reports"
  end

  @doc """
  Submits a new abuse report for a target member.
  Abuse reports will be followed up on by our Community Support team.

  This method requires the oauth reporting scope for oauth-authenticated requests

  For available params, see:
  https://www.meetup.com/meetup_api/docs/self/abuse_reports/
  """
  @spec abuse_reports(map()) :: tuple()
  def abuse_reports do
    method = :post
    path = "self/abuse_reports"
  end

  @doc """
  Checks the block status for a target member relative to the authenticated member.
  """
  @spec blocks(atom(), integer()) :: tuple()
  def blocks(:get, member_id) do
    path = "self/blocks/#{member_id}"
  end

  @doc """
  Blocks a target member from various interactions with the authenticated member on the platform.

  For available params, see:
  https://www.meetup.com/meetup_api/docs/self/blocks/:member_id/#block
  """
  @spec blocks(atom(), integer(), map()) :: tuple()
  def blocks(:post, member_id, params) do
    path = "self/blocks/#{member_id}"
  end

  @doc """
  Unblocks a previously blocked member from various interactions with the authenticated member on the platform.
  """
  @spec blocks(atom(), integer()) :: tuple()
  def blocks(:delete, member_id) do
    path = "self/blocks/#{member_id}"
  end
end
