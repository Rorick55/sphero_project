require 'artoo'
require_relative 'sphero.rb'

connection :keyboard, adaptor: :keyboard
device :keyboard, driver: :keyboard, connection: :keyboard

work do
  puts "Ready to play?"
  puts 'Lets begin'
    on keyboard, :key => :keypress
end

def keypress(sender, key)
  while key
    case key
    when up
      @sphero.forward
    when down
      @sphero.backwards
    when left
      @sphero.left
    when right
      @sphero.right
    else
      @sphero.stop_work
    end
  end
end
