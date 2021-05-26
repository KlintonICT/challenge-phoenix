defmodule Reborn.LiveDashboardCounter do
  @moduledoc """
  Reborn.LiveDashboardCounter is a schema for counting live dashboard is hit
  """

  use Ecto.Schema

  import Ecto.Changeset
  alias Reborn.{Repo, LiveDashboardCounter}

  schema "live_dashboard_counters" do
    field :counters, :integer, default: 0

    timestamps()
  end

  def changeset(live_dashboard_counter, param) do
    live_dashboard_counter
    |> cast(param, [:counters])
    |> validate_required([:counters])
  end

  @type live_dashboard_counter() :: LiveDashboardCounter

  @spec get_prev_counters(live_dashboard_counter()) :: LiveDashboardCounter
  def get_prev_counters(live_dashboard_counter) do
    prev_counter = Repo.get(live_dashboard_counter, 1)

    # check whether the counters field is created
    prev_counter =
      if prev_counter == nil do
        Repo.insert!(%LiveDashboardCounter{id: 1, counters: 0})
      else
        prev_counter
      end

    prev_counter
  end

  @spec add_counter(live_dashboard_counter()) :: integer()
  def add_counter(live_dashboard_counter) do
    prev_counter = get_prev_counters(live_dashboard_counter)

    current_counter =
      changeset(prev_counter, %{counters: prev_counter.counters + 1})
      |> Repo.update!()
      |> Map.fetch!(:counters)

    current_counter
  end
end
