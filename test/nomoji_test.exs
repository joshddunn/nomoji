defmodule NomojiTest do
  use ExUnit.Case
  doctest Nomoji

  test "basic removal" do
    assert Nomoji.strip("hey look 👀") == "hey look"
  end

  test "removes the character that makes things big" do
    assert Nomoji.ignore_charlist(65039) == true
  end

  test "removes strings in the form 1Fxxx" do
    assert Nomoji.ignore_charlist(128126) == true
  end

  test "doesnt remove string in the form 1Fxx" do
    assert Nomoji.ignore_charlist(7976) == false
  end
end
