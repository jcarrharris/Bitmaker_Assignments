class SomePlugin
  include Cinch::Plugin

  listen_to :connect, method: :on_connect
  listen_to :online,  method: :on_online
  listen_to :offline, method: :on_offline

  def on_connect(m)
    User("my_master").monitor
  end

  def on_online(m, user)
    user.send "Hello master"
  end

  def on_offline(m, user)
    @bot.loggers.info "I miss my master :("
  end
end
