defmodule Twipper.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Twipper.Repo,
      # Start the Telemetry supervisor
      TwipperWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Twipper.PubSub},
      # Start the Endpoint (http/https)
      TwipperWeb.Endpoint
      # Start a worker by calling: Twipper.Worker.start_link(arg)
      # {Twipper.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Twipper.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TwipperWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
