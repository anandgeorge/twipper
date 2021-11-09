# Twipper

## Generating a new project

- mix phx.new twipper --live
- Make sure you are running Phoenix 1.6

To start your Phoenix server:

- cd twipper
- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Integrating Tailwindcss

- cd assets/
- npm init -y
- npm install --save-dev tailwindcss autoprefixer postcss postcss-import
- npx tailwindcss init --postcss
- Add "postcss-import": {}, to the postcss config file.

## Integrating Alpinejs

- Link to the css file cdn in root.html.heex
- Modify the liveSocket initialization in app.js

## Creating the timeline

- mix phx.gen.live Timeline Post posts username body likes_count:integer reposts_count:integer
- Copy the routes created to router.ex
- mix ecto.migrate

## Cloning the repo

- cd twipper
- mix deps.get
- cd assets
- npm install
- cd ../
- Change postgres password in config/dev.exs
- mix ecto.create
- mix ecto.migrate
- mix phx.server

Now you can visit [`localhost:4000`](http://localhost:4000/posts) from your browser.
Open another window and visit the same url.
Create a Twip, bookmark or buy the recommendation.
All actions in one window are synced instanteously between the two windows.

## To be done

- Profile, Wallet, Messages, Notifications
- Integrating with Trading Bot
