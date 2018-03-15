defmodule Meetup.V3.Photos do
  @moduledoc """
  Handles endpoints related to meetup photos.
  """

  @doc """
  Lists photos for a given event.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/photos/#list
  """
  @spec index(String.t(), String.t(), map()) :: tuple()
  def index(urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/photos"
    Meetup.get(path, params)
  end

  @doc """
  Support for uploading new Event photos.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/photos/#upload
  """
  @spec upload(String.t(), String.t(), map()) :: tuple()
  def upload(urlname, event_id, params) do
    path = "#{urlname}/events/#{event_id}/photos"
    Meetup.post(path, params)
  end

  @doc """
  Gets information about a specific photo.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/photos/:photo_id/#get
  """
  @spec show(String.t(), String.t(), integer(), map()) :: tuple()
  def show(urlname, event_id, photo_id, params) do
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}"
    Meetup.get(path, params)
  end

  @doc """
  Edits photo details.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/photos/:photo_id/#edit
  """
  @spec edit(String.t(), String.t(), integer(), map()) :: tuple()
  def edit(urlname, event_id, photo_id, params) do
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}"
    Meetup.patch(path, params)
  end

  @doc """
  Deletes a specified event photo.
  """
  @spec delete(String.t(), String.t(), integer()) :: tuple()
  def delete(urlname, event_id, photo_id) do
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}"
    Meetup.delete(path, %{})
  end

  @doc """
  Lists photo comments associated with a photo.
  """
  @spec comments(String.t(), String.t(), integer()) :: tuple()
  def comments(urlname, event_id, photo_id) do
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}/comments"
    Meetup.get(path, %{})
  end

  @doc """
  Creates a new photo comment.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/events/:event_id/photos/:photo_id/comments/#post
  """
  @spec comment(String.t(), String.t(), integer(), map()) :: tuple()
  def comment(urlname, event_id, photo_id, params) do
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}/comments"
    Meetup.post(path, params)
  end

  @doc """
  Deletes photo comments.
  """
  @spec delete_comment(String.t(), String.t(), integer(), integer()) :: tuple()
  def delete_comment(urlname, event_id, photo_id, comment_id) do
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}/comments/#{comment_id}"
    Meetup.delete(path, %{})
  end

  @doc """
  Gets a list a group photo albums in ascending order based on the time they were created.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/photo_albums/
  """
  @spec photo_albums(String.t(), map()) :: tuple()
  def photo_albums(urlname, params) do
    path = "#{urlname}/photo_albums"
    Meetup.get(path, params)
  end

  @doc """
  Gets information about a specific photo album.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/photo_albums/:album_id/
  """
  @spec photo_album(String.t(), integer(), map()) :: tuple()
  def photo_album(urlname, album_id, params) do
    path = "#{urlname}/photo_albums/#{album_id}"
    Meetup.get(path, params)
  end

  @doc """
  Lists photos for a given photo album.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/photo_albums/:album_id/photos/#list
  """
  @spec photo_album_photos(String.t(), integer(), map()) :: tuple()
  def photo_album_photos(urlname, album_id, params) do
    path = "#{urlname}/photo_albums/#{album_id}/photos"
    Meetup.get(path, params)
  end

  @doc """
  Support for uploading new album photos.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/photo_albums/:album_id/photos/#upload
  """
  @spec photo_album_photo_upload(String.t(), integer(), map()) :: tuple()
  def photo_album_photo_upload(urlname, album_id, params) do
    path = "#{urlname}/photo_albums/#{album_id}/photos"
    Meetup.post(path, params)
  end

  @doc """
  Lists of all photos uploaded for the group.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/:urlname/photos/#list
  """
  @spec group_index(String.t(), map()) :: tuple()
  def group_index(urlname, params) do
    path = "#{urlname}/photos"
    Meetup.get(path, params)
  end

  @doc """
  Support for uploading new Member photos.
  For available params, see:
  https://www.meetup.com/meetup_api/docs/members/:member_id/photos/#post
  """
  @spec member_photo_upload(integer(), map()) :: tuple()
  def member_photo_upload(member_id, params) do
    path = "members/#{member_id}/photos"
    Meetup.post(path, params)
  end

  @doc """
  Deletes a member photo by id.
  """
  @spec member_photo_delete(integer(), integer()) :: tuple()
  def member_photo_delete(member_id, photo_id) do
    path = "members/#{member_id}/photos/#{photo_id}"
    Meetup.delete(path, %{})
  end
end
