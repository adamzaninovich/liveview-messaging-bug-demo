# LiveView Increased Latency Bug

## Reproduced bug:

https://github.com/user-attachments/assets/e2755b62-ae27-40a5-8a99-ed024df53ffe

## Steps to reproduce bug:
1. Increase the network latency on your page
2. Switch to the second live view and while it is loading, continue to attempt to increase the counter
3. Notice the error message in the terminal about being inable to find the route

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
