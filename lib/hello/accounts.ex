defmodule Hello.Accounts do
  @moduledoc """
  Accounts context
  """
  alias Hello.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Nico", username: "nicobm"},
      %User{id: "2", name: "Kath", username: "kathmm"},
      %User{id: "3", name: "Crys", username: "crysss"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
