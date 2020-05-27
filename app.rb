require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  
  
  get '/goodbye/:name' do
  @user_name = params[:name]
    # erb :goodbye
    "Goodbye, #{@user_name}."
  end 
  
  get '/multiply/:num1/:num2' do
    @num1 = params[:num1]
    @num2 = params[:num2]
    @total = (@num1 * @num2)
    @total= @total.to_i
    # erb :multiply
    "The product is: #{@total}."

  end 
  
end