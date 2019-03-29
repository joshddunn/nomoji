defmodule NomojiTest do
  use ExUnit.Case
  doctest Nomoji

  test "basic removal" do
    assert Nomoji.strip("hey look 👀") == "hey look"
  end

  test "removes the character that makes things big" do
    assert Nomoji.keep_int(65039) == false
  end

  test "removes strings in the form 1Fxxx" do
    assert Nomoji.keep_int(128126) == false
  end

  test "doesnt remove string in the form 1Fxx" do
    assert Nomoji.keep_int(7976) == true
  end
end
