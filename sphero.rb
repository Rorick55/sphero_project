require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-WGO-AMP-SPP'
device :sphero, :driver => :sphero

class Sphero
  def initialize(port)
    connection :sphero, :adaptor => :sphero, :port => port
    device :sphero, :driver => :sphero
  end
end
