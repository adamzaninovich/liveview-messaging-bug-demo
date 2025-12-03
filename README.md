# LiveView Increased Latency Bug

## Reproduced bug:

https://github.com/user-attachments/assets/e2755b62-ae27-40a5-8a99-ed024df53ffe

## Steps to reproduce bug:
1. Open Chrome DevTools → Network → throttle to 3G.
2. Visit the Counter LiveView.
3. Click to navigate to the Counter2 LiveView.
4. Before it finishes mounting, attempt to increase count on initial counter LiveView.
5. Observe that the server logs errors for events that belong to the old view.

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
