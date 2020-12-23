require 'sinatra/base'

module AdderBot
  class Web < Sinatra::Base
    get '/' do
      'Slack Bot built with Ruby!.'
    end
  end
end