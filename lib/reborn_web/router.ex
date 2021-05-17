defmodule RebornWeb.Router do
  use RebornWeb, :router

  import Plug.BasicAuth
  import Phoenix.LiveDashboard.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :admins_only do
    plug :basic_auth,
      username: Application.fetch_env!(:reborn, :USERNAME),
      password: Application.fetch_env!(:reborn, :PASSWORD)
  end

  scope "/" do
    pipe_through [:browser, :admins_only]
    live_dashboard "/", metrics: RebornWeb.Telemetry
  end

  scope "/index", RebornWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", RebornWeb do
  #   pipe_through :api
  # end
end
