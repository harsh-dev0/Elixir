defmodule Users do
  alias ElixirLS.LanguageServer.Providers.CodeAction.Helpers
  alias Helpers.Format, as: WhatEvr
  # def new do
  #   default()
  # end
  def new, do: default()

  def new(name, age) do
    formatted_name = WhatEvr.trim_text(name)
    %{name: formatted_name, age: age}
  end

  defp default do
    %{name: "Hp", age: 30}
  end
end
