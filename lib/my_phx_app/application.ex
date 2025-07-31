defmodule MyPhxApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MyPhxAppWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:my_phx_app, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MyPhxApp.PubSub},
      # Start a worker by calling: MyPhxApp.Worker.start_link(arg)
      # {MyPhxApp.Worker, arg},
      # Start to serve requests, typically the last entry
      MyPhxAppWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MyPhxApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MyPhxAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
