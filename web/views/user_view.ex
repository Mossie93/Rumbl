defmodule Rumbl.UserView do
  use Rumbl.Web, :view
  alias Rumbl.User

  def first_name(%Rumbl.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
