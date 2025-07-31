defmodule MyPhxAppWeb.CounterTwoLive do
  use MyPhxAppWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :count, 0)}
  end

  def handle_event("increment2", _params, socket) do
    {:noreply, update(socket, :count, &(&1 + 1))}
  end

  def render(assigns) do
    ~H"""
    <div class="flex flex-col items-center justify-center min-h-screen bg-purple-100">
      <div class="mb-8">
        <.link href={~p"/counter"} class="text-purple-600 hover:text-purple-800 underline">
          Go to Counter One
        </.link>
      </div>
      <div class="bg-white p-8 rounded-lg shadow-md text-center">
        <h1 class="text-3xl font-bold text-gray-800 mb-4">Counter Two</h1>
        <div class="text-6xl font-bold text-purple-600 mb-6">
          <%= @count %>
        </div>
        <button 
          phx-click="increment2"
          class="bg-purple-500 hover:bg-purple-700 text-white font-bold py-2 px-4 rounded transition duration-300"
        >
          Increment
        </button>
      </div>
    </div>
    """
  end
end
