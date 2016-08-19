defmodule Cradle do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(Cradle.Repo, []),
      # Start the endpoint when the application starts
      supervisor(Cradle.Endpoint, []),
      # Start your own worker by calling: Cradle.Worker.start_link(arg1, arg2, arg3)
      # worker(Cradle.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Cradle.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Cradle.Endpoint.config_change(changed, removed)
    :ok
  end
end
