defmodule StatsTest do
  use ExUnit.Case
  doctest Stats

    test "sum of list of numbers" do
      assert Stats.sum([1, 2, 3, 4, 5]) == 15
    end

    test "count of list of numbers" do
      assert Stats.count([1, 2, 3, 4, 5]) == 5
    end

    test "average of list of numbers" do
      assert Stats.average([1, 2, 3, 4, 5]) == 3.0
    end

    describe "Stats on list of list with setups" do
      setup do
        [
          list: [1,3,5,7,9],
          sum: Stats.sum([1,3,5,7,9]),
          count: 5
        ]
      end

      test "sum of list of numbers", %{sum: sum} do
        assert sum == 25
      end

      test "count of list of numbers", %{count: count} do
        assert count == 5
      end
    end
end
