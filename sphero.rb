require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-WGO-AMP-SPP-6'
device :sphero, :driver => :sphero

# connection :keyboard, adaptor: :keyboard
# device :keyboard, driver: :keyboard, connection: :keyboard



    @sides = 4
    @speed = 30
    @rolltime = 1
    @stoptime = 1


  def create_side(direction)
    sphero.roll @speed, direction
    Kernel::sleep @rolltime

    sphero.stop
    Kernel::sleep @stoptime
  end

  def make_shape
    (1..@sides).each do |side|
      create_side(side * heading_direction)
    end
  end

  def heading_direction
    interval = 0
    unless sides <= 1
      interval = 360 / sides
    end
    interval.to_i
  end
work do
 sphero.roll 60, 100
 Kernal::sleep 4
  sphero.stop
  Kernel::sleep @stoptime
end
