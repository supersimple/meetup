defmodule Meetup.V3.Photos do
  def index(urlname, event_id, params) do
    method = :get
    path = "#{urlname}/events/#{event_id}/photos"
  end

  def upload(urlname, event_id, params) do
    method = :post
    path = "#{urlname}/events/#{event_id}/photos"
  end

  def show(urlname, event_id, photo_id, params) do
    method = :get
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}"
  end

  def edit(urlname, event_id, photo_id, params) do
    method = :patch
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}"
  end

  def delete(urlname, event_id, photo_id) do
    method = :delete
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}"
  end

  def comments(urlname, event_id, photo_id) do
    method = :get
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}/comments"
  end

  def comment(urlname, event_id, photo_id, params) do
    method = :post
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}/comments"
  end

  def delete_comment(urlname, event_id, photo_id, comment_id) do
    method = :delete
    path = "#{urlname}/events/#{event_id}/photos/#{photo_id}/comments/#{comment_id}"
  end

  def photo_albums(urlname, params) do
    method = :get
    path = "#{urlname}/photo_albums"
  end

  def photo_album(urlname, album_id, params) do
    method = :get
    path = "#{urlname}/photo_albums/#{album_id}"
  end

  def photo_album_photos(urlname, album_id, params) do
    method = :get
    path = "#{urlname}/photo_albums/#{album_id}/photos"
  end

  def photo_album_photo_upload(urlname, album_id, params) do
    method = :post
    path = "#{urlname}/photo_albums/#{album_id}/photos"
  end

  def group_index(urlname, params) do
    method = :get
    path = "#{urlname}/photos"
  end

  def member_photo_upload(member_id, params) do
    method = :post
    path = "members/#{member_id}/photos"
  end

  def member_photo_delete(member_id, photo_id) do
    method = :delete
    path = "members/#{member_id}/photos/#{photo_id}"
  end
end
