require 'sinatra/base'
require 'sinatra/reloader'

  class Application < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
    # GET /
    # Root path (homepage, index.html)
    get '/' do

      return 'Hello!'
    end

    get '/posts' do
      name = params[:name]
      cohort_name = params[:cohort_name]
        return "Hello #{name}, you are in the #{cohort_name} cohort."
      end

    post '/posts' do
      title = params[:title]
        return "Post was created with title: #{title}"
      end

    get '/hello' do
      name = params[:name]
        return "Hello #{name}!"
    end

    get '/names' do
      name_1 = params[:name_1]
      name_2 = params[:name_2]
      name_3 = params[:name_3]
        return "#{name_1}, #{name_2}, #{name_3}"
    end

    post '/submit' do
      name = params[:name]
      message = params[:message]

      return "Thanks #{name}, you sent this message: #{message}"
    end

    post '/sort-names' do
      names = params[:names]

      return names.split(",").sort.join(",")
    end
  end
  