require "socket"
require 'rubygems'
#require 'nokogiri'
#require 'open-url'
require 'weatherboy'

server = "chat.freenode.net"
port = "6667"
nick = "FunnyBot"
channel = "#bitmaker"
greeting_prefix = "privmsg #bitmaker :"
greetings = ["hello", "hi", "hola", "yo", "wazup", "guten tag", "howdy", "salutations", "who the hell are you"]

irc_server = TCPSocket.open(server, port)

irc_server.puts "USER bfunnybot 0 * BFunnyBot"
irc_server.puts "NICK #{nick}"
irc_server.puts "Join #{channel}"
#irc_server.puts "PRIVMSG #{channel} :Hello from IRB Bot"

begin #Weatherboy
weatherboy = Weatherboy.new(90210)
  weatherboy = Weatherboy.new("Indianapolis, IN")
  weatherboy = Weatherboy.new
  weatherboy.location = "New York, NY"
    weatherboy.location = 46220
    weatherboy.location
    => 46220
	end
  w = weatherboy.current
     => "#{Weatherboy::Current:0x8c3dfe0...}"
     w.weather
     => "Overcast"
     w.temp_f
     => "31"
	end
end

# Hello, Bot!
until irc_server.eof?  do
	msg = irc_server.gets.downcase
	puts msg

	wasGreeted = false
	greetings.each { |g| wasGreeted = true if msg.include? g}

	if msg.include? greeting_prefix and wasGreeted
		response = "#{w}"
		irc_server.puts "PRIVMSG #{channel} :#{response}"
	end
end