# Yakima

Unfortunately [Yakima's fit lookup site](http://www.fitlookup.yakima.com/) doesn't work and I had a Fullback bike rack from them.
This project tries to use their API (that still work) to get the precious fit information, like hub setting and fit notes. I've managed to get those for my car model. If there are other people who find this useful, I might improve it so it can work for other car models and may even add a simple web interface.

## Dependencies

### Elixir language

Please refer to http://elixir-lang.github.io/install.html for more information about how to install Elixir.

### PostgreSQL database
Please refer to the official installation guide https://www.postgresql.org/docs/9.6/static/tutorial-install.html

## Local setup

```
git clone https://github.com/wiserfirst/YakimaFitLookup.git
cd YakimaFitLookup
mix deps.get
mix ecto.create
mix ecto.migrate
```

### Note
If you use Postgres.app on OSX, the default config should work. Otherwise you might need to update the database config in `config/config.exs` accordingly
