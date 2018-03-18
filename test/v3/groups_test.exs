defmodule Meetup.V3.GroupsTest do
  use ExUnit.Case
  alias Meetup.V3.Groups

  setup do
    {:ok, my_groups} = Groups.my_groups(%{})

    group =
      my_groups
      |> Jason.decode!()
      |> List.first()

    {:ok, group: group}
  end

  describe "show/2" do
    test "returns an error for an invalid group" do
      assert {:error, _} = Groups.show("Not-A-Valid_Group", %{})
    end

    test "returns a group", %{group: group} do
      assert {:ok, _} = Groups.show(group["urlname"], %{})
    end
  end

  describe "similar_groups/1" do
    test "returns an error for an invalid group" do
      assert {:error, _} = Groups.similar_groups("Not-A-Valid_Group")
    end

    test "returns a list of similar groups", %{group: group} do
      assert {:ok, _} = Groups.similar_groups(group["urlname"])
    end
  end

  describe "find/1" do
    test "returns groups" do
      assert {:ok, _} = Groups.find(%{zip: 10006})
    end
  end

  describe "recommended/1" do
    test "returns groups" do
      assert {:ok, _} = Groups.recommended(%{zip: 10006})
    end
  end

  describe "my_groups/1" do
    test "returns groups" do
      assert {:ok, _} = Groups.my_groups(%{})
    end
  end
end
