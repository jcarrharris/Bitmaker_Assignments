require 'cinch'
require 'open-uri'
require 'nokogiri'
require 'cgi'

bot = Cinch::Bot.new do
  configure do |c|
    c.server   = "irc.freenode.net"
    c.nick     = "Urban Dictionary"
    c.channels = ["#bitmaker"]
  end

  helpers do
    def urban_dict(query)
      url = "http://www.urbandictionary.com/define.php?term=#{CGI.escape(query)}"
      CGI.unescape_html Nokogiri::HTML(open(url)).at("div.definition").text.gsub(/\s+/, ' ') rescue nil
    end
  end

  on :message, /^!urban (.+)/ do |m, term|
    m.reply(urban_dict(term) || "No results found", true)
  end
end

bot.start