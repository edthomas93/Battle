require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    'Time to battle!!!!'
  end

  run! if app_file == $0
end
