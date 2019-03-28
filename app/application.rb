class Application

  def call(env)
    resp = Rack::Response.new

    t = time
    morning = (1..12)
    afternoon = (13..24)

    if t.hour == morning
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
  end
end
