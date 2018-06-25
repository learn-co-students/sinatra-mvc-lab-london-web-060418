require_relative 'config/environment'

class App < Sinatra::Base

  # Build a form to take user input in user_input.erb. Show that form using a GET request at /.
  get '/' do
    erb :user_input
  end
  # Create a POST method in your controller (app.rb) to receive your form's params.
  post '/piglatinize' do
    # "user_phrase"
    @pig_latinized_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :result
  end

end
