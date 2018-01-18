defmodule HeimdallWeb.Router do
  use HeimdallWeb, :router

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

  # this is where web routes go. dont worry about this
  scope "/", HeimdallWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end


  # this is where api routes go
  scope "/api", HeimdallWeb do
    pipe_through :api

    get "/add_check_digit/:upc", ApiController, :add_check_digit
    get "/add_a_bunch_of_check_digits/:upcs", ApiController, :add_a_bunch_of_check_digits
  end
end
