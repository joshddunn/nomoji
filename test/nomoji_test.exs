defmodule NomojiTest do
  use ExUnit.Case
  doctest Nomoji

  test "basic removal" do
    assert Nomoji.strip("👾☎️") == ""
  end
end
