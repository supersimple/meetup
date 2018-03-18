defmodule Meetup.V3.BoardsTest do
  use ExUnit.Case
  alias Meetup.V3.{Boards, Groups}

  setup do
    {:ok, my_groups} = Groups.my_groups(%{})

    group =
      my_groups
      |> Jason.decode!()
      |> List.first()

    {:ok, my_boards} = Boards.index(group["urlname"])

    board =
      my_boards
      |> Jason.decode!()
      |> List.first()

    {:ok, my_discussions} = Boards.discussions(group["urlname"], board["id"])

    discussion =
      my_discussions
      |> Jason.decode!()
      |> List.first()

    {:ok, group: group, board: board, discussion: discussion}
  end

  describe "index/1" do
    test "returns an error for an invalid group" do
      assert {:error, _} = Boards.index("Not-A-Valid_Group")
    end

    test "returns info for a valid group", %{group: group} do
      assert {:ok, _} = Boards.index(group["urlname"])
    end
  end

  describe "discussions/2" do
    test "returns an error for an invalid group" do
      assert {:error, _} = Boards.discussions("Not-A-Valid_Group", 123)
    end

    test "returns a list of discussions", %{group: group, board: board} do
      assert {:ok, _} = Boards.discussions(group["urlname"], board["id"])
    end
  end

  describe "discussions/3" do
    test "returns an error for an invalid group" do
      assert {:error, _} = Boards.discussions("Not-A-Valid_Group", 123, 123)
    end

    test "returns a discussion", %{group: group, board: board, discussion: discussion} do
      assert {:ok, _} = Boards.discussions(group["urlname"], board["id"], discussion["id"])
    end
  end
end
