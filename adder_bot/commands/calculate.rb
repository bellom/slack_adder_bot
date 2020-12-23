module AdderBot
  module Commands
    class Calculate < SlackRubyBot::Bot
      match(/^(?<bot>\w*)\s(?<expression>.*)$/) do |client, data, match|
        answer = Dentaku::Calculator.new.evaluate(match[:expression]) if match.names.include?('expression')
        answer = answer.to_s if answer
        if answer && answer.length > 0
          client.say(channel: data.channel, text:"#{match[:expression]} = #{answer}" )
        else 
          client.say(channel: data.channel, text: "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
        end
      end
    end
  end
end