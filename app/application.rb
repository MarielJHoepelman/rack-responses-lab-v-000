class Application

  def call(env)
    resp = Rack::Response.new

    morning = (1..12)
    afternoon = (12..)

    def greet
    if Time.now == morning
      resp.write "Good Morning"
    else
      resp.write "You Lose"
    end
  end
end

# def greet
#     if Time.now <= Time.now.beginning_of_day
#         render :text =>"Good Morning"
#     elsif Time.now <= Time.now.middle_of_day
#         render :text => "Good Afternoon"
#     elsif Time.now <= Time.now.change(:hour => 5 )
#         render :text => "Good Evening"
#     elsif Time.now <= Time.now.change(:hour => 8 )
#         render :text =>"Good Night"
#     end
# end
