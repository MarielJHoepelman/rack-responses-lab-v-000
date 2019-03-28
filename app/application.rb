class Application

  def call(env)
    resp = Rack::Response.new

    Time.now
    morning = (1..12)
    afternoon = (13..24)

    if Time.now.hour == morning
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
  end
end
