require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://realclearpolitics.com/epolls/latest_polls/"))
polls = page.css('blockquote#')

File.open('')