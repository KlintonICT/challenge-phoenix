defmodule Reborn.Repo.Migrations.CreateLiveDashboardCounters do
  use Ecto.Migration

  def change do
    create table(:live_dashboard_counters) do
      add :counters, :integer, default: 0

      timestamps()
    end
  end
end
