module AdderBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'calculation bot'
      desc 'This bot can add two numbers'

      command :add_numbers do
        title 'add two numbers'
      end
    end 
  end
end