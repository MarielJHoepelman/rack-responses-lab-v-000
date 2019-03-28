class Application

  def call(env)
    resp = Rack::Response.new

    morning = (1..12)
    afternoon = (13..24)

    def greet
      if Time.now == morning
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end
    end

end
