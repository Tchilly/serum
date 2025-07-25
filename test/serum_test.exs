defmodule SerumTest do
  use ExUnit.Case
  doctest Serum

  test "greets the world" do
    assert Serum.hello() == :world
  end
end
