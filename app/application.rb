class Application

  def call(env)
    resp = Rack::Response.new

    Time.now.morning = (1..12)
    Time.now.afternoon = (13..24)

    if Time.now == morning
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
  end
end
