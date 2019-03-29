defmodule Nomoji do
  def strip(string) do
    Regex.replace(~r/[👾️☎️]/, string, "")
  end
end
