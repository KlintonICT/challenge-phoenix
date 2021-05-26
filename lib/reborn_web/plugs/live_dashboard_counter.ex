defmodule RebornWeb.Plug.LiveDashboardCounter do
  @moduledoc """
  RebornWeb.Plug.LiveDashboardCounter handles the increment of the number of live dashboard is hit
  """

  alias Reborn.LiveDashboardCounter
  require Logger

  def init(options), do: options

  @spec call(Plug.Conn.t(), any) :: Plug.Conn.t()
  def call(%Plug.Conn{request_path: _path} = conn, _opts) do
    LiveDashboardCounter
    |> LiveDashboardCounter.add_counter()
    |> print_dashboard_counter()
    |> Logger.info()

    conn
  end

  @type counters() :: integer()
  @spec print_dashboard_counter(counters()) :: String.t()
  def print_dashboard_counter(counters) do
    duplicated_stars = String.duplicate("*", 15)

    output = """
      \n
      #{duplicated_stars} Live Dashboard Counter #{duplicated_stars}\n
      There are #{counters} counters are hit on live dashboard page.\n
      #{duplicated_stars}********* End **********#{duplicated_stars}
    """

    output
  end
end
