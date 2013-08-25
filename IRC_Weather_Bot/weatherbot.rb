require 'cinch'
require 'weatherboy'
require 'cgi'

bot = Cinch::Bot.new do
	configure do |c|
		c.server = "irc.freenode.org"
		c.channels = ["#bitmaker"]
		c.nick = "weatherbot"
	end

helpers do 
	def location
		@location ||="Toronto"
	end
	def setLocation(local)
		@location = local
	end
	def units 
		@units ||="celsius"
	end
	def setUnits(units)
		@units = units
	end
end
on :message, "weather" do |m|
	m.reply "Get the weather in #{CGI.unescape(location)} say '!currentweather. To change the location say '!location city'. To get help type !whelp."
end

on:message, "farenheit" do |m|
	m.reply "This is in farenheit fools"
end

on:message, "celsius" do |m|
	m.reply "This is in celsius fools"
end

on :message, /^!currentweather/ do |m|
	weatherboy = Weatherboy.new(location)
	w = weatherboy.current
	m.reply "The current weather in #{CGI.unescape(location)} is #{w.weather} It's about #{w.temp_f} degrees F." if units=="farenheit"
m.reply "Hi there! The current weather in #{CGI.unescape(location)} is #{w.weather}. It's about #{w.temp_c} degrees C." if units =="celsius"
end

on :message, /^!forecast/ do |m|
	weatherboy=Weatherboy.new(location)
	f = weatherboy.forecasts
	m.reply "Tomorrow it will be #{f[0].conditions} in #{CGI.unescape(location)} with a high of #{f[0].high_f} and a low of #{f[0].low_f}. Chance of error" if units =="farenheit"
m.reply = "Tomorrow it will be #{f[0].conditions} in #{CGI.unescape(location)} with a high of #{f[0].high_c} and a low of #{f[0].low_c}. Chance of error" if units =="celsius"
end

on :message, /^!whelp/ do |m|
	m.reply "I know the following commands !currentweather, !forecast, !location. To change units of measurement say !farenheit or !celsius."\
end

on :message, /^!farenheit/ do |m, farenheit|
	@units="farenheit"
	m.reply "Units in farenheit"
end

on :message, /^!celsius/ do |m| 
	@units="celsius"
	m.reply "Units at celsius"
end

		on :message, /^!location (.+)/ do |m, newlocal|
	newlocal = CGI.escape(newlocal)
	setLocation newlocal
			m.reply "Okay, now checking the weather in #{CGI.unescape(location)}"
		end

	on :message

end

bot.start