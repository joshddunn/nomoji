defmodule Nomoji do
  def strip(string) do
    string
    |> String.to_charlist
    |> Enum.filter(&(keep_int(&1)))
    |> List.to_string
    |> String.trim
  end

  def keep_int(int) do
    hex = Integer.to_string(int, 16)
    !("FE0F" == hex || Regex.match?(~r/1F[A-F0-9]{3}/, hex))
  end
end
