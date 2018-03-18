defmodule Meetup do
  @moduledoc """
  API wrapper for Meetup.com public API.
  Expects an env var named MEETUP_API_KEY to be set.
  """
  @base_url "https://api.meetup.com"

  def get(path, opts \\ %{}) do
    %{body: body} =
      path
      |> build_url(opts)
      |> HTTPotion.get()

    format_return(body)
  end

  def post(path, opts \\ %{}) do
    %{body: body} =
      path
      |> build_url(opts)
      |> HTTPotion.post()

    format_return(body)
  end

  def patch(path, opts \\ %{}) do
    %{body: body} =
      path
      |> build_url(opts)
      |> HTTPotion.patch()

    format_return(body)
  end

  def delete(path, opts \\ %{}) do
    %{body: body} =
      path
      |> build_url(opts)
      |> HTTPotion.delete()

    format_return(body)
  end

  def put(path, opts \\ %{}) do
    %{body: body} =
      path
      |> build_url(opts)
      |> HTTPotion.put()

    format_return(body)
  end

  defp build_url(path, opts) do
    "#{@base_url}/#{path}?sign=true&key=#{get_meetup_api_key()}#{build_query_string(opts)}"
  end

  defp get_meetup_api_key do
    System.get_env("MEETUP_API_KEY") || Mix.raise("You must set your meetup api key.")
  end

  defp build_query_string(%{}), do: ""

  defp build_query_string(opts) when is_map(opts) do
    qs = URI.encode_query(opts)
    "&#{qs}"
  end

  defp build_query_string(_), do: Mix.raise("Params must be included as a map.")

  defp format_return(body) do
    decoded_body = Jason.decode!(body)

    if is_map(decoded_body) && Map.has_key?(decoded_body, "errors") do
      {:error, Map.get(decoded_body, "errors")}
    else
      {:ok, body}
    end
  end
end
