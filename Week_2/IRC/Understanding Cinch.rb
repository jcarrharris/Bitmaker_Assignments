require 'cinch'

bot = Cinch::Bot.new do #creates a new bot
  configure do |c| #configures the object
    c.server = "irc.freenode.org"
    c.channels = ["#bitmaker"] 
  end

  on :message, "hello" do |m| #defines the message handler
    m.reply "Hello, #{m.user.nick}" #define the basic string using the reply method
  end
end

bot.start

# max_messages can be set using : Fixnum
# messages_per_second can be set using Type :Float

#{Cinch::Message#reply reply}
#cinch caa monirot user state using {Cinch::User#monitor}
#you can use listen_to :connect, method: :on_connect
#listen_to :online,  method: :on_online
#you can send messages using 'm.user' or 'm.channel'
# you can use help methods - {Cinch::Helpers helper methods} to get instances of channel + user objects to work
# User('user').send("Hello") - sends a message to user 'user'
#Channel('#channel').send("Hello!") - sends a message to channel '#channel'

#Events
#Events can be maped to ':topic' or ':leaving' or ':message' or ':privmsg'
# All events behave the same way - when they get triggered the handler passes a single object, a reference to the {Cinch::Message Message object}

=begin Example:

    on :topic do |m|
      # m is the message object
    = end

#The ':action' event is triggereed when a user performs an action.
 	= begin Example:

        on :action, "kicks the bot" do |m|
          m.reply "Ouch! Stop kicking me :(", true
        = end    
## `:catchall`

`:catchall` is a special event that gets triggered for every incoming
IRC message/command, no matter what the type is.

## `:channel`

The `:channel` event is triggered for channel messages (the usual
form of communication on IRC).

See also {file:docs/events.md#private the `:private` event}.

## `:connect`

The `:connect` event is triggered after the bot successfully
connected to the IRC server.

One common use case for this event is setting up variables,
synchronising information etc.


## `:online`

This event is triggered when a
{file:docs/common_tasks.md#checking-if-a-user-is-online monitored user}
comes online.

One additional argument, the user coming online, gets passed to the
handler.


## `:message`

The `:message` event is triggered for messages directed at either a
channel or directly at the bot. It's synonymous with `:privmsg`.








