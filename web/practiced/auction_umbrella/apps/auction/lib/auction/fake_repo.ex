defmodule Auction.FakeRepo do
  alias Auction.Item

  @items [
    %Item{
      id: 1,
      title: "My first item",
      description: "A tasty item sure to please",
      end_at: "~N[2020-01-01 00:00:00]"
    },
    %Item{
      id: 2,
      title: "WarGames Bluray",
      description: "A classic game that never goes out of style",
      end_at: "~N[2020-01-01 00:00:00]"
    },
    %Item{
      id: 3,
      title: "The Matrix",
      description: "A groundbreaking sci-fi film that changed the world",
      end_at: "~N[2018-11-05 03:12:29]"
    }
  ]

  def all, do: @items
  def get!(id), do: Enum.find(@items, &(&1.id == id))

  def get_item_by(item, map) do
    Enum.find(@items, fn item ->
      Enum.all?(map, fn {k, v} ->
        item[k] == v
      end)
    end)
  end
end
