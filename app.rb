require "sinatra"
require_relative "./lib/counter"
require "sinatra/reloader"

class CounterApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @counter = Counter.instance
  end

  get '/' do
    erb :index
  end

  post '/increment' do
    @counter.increment
    redirect '/'
  end

  post '/decrement' do
    @counter.decrement
    redirect '/'
  end
end
