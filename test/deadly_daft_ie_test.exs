defmodule DeadlyDaftIeTest do
  use ExUnit.Case
  doctest DeadlyDaftIe

  test "greets the world" do
    assert DeadlyDaftIe.hello() == :world
  end
end
