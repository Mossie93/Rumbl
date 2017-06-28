defmodule Rumbl.Repo do
  @moduledoc """
  In-memory repository
  """
  
  def all(Rumbl.User) do
    [
      %Rumbl.User{id: 1, name: "Dosia", username: "Dosian", password: "password123"},
      %Rumbl.User{id: 2, name: "Zosia", username: "Zosian", password: "password456"},
      %Rumbl.User{id: 3, name: "Gosia", username: "Gosian", password: "password789"}
    ]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id
    end
  end
end
