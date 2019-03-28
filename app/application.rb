class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour.between?(0, 11)
      resp.write "Good Morning!"
    else Time.now.hour.between?(12, 24)
      resp.write "Good Afternoon."

    # if Time.now.hour > 12
    #   resp.write "Good Morning"
    # else
    #   resp.write "Good Afternoon"
    end
  end
end
