class Application

def call(env)
#call rack repsonse
  resp = Rack::Response.new
#logic of current hour
       if Time.now.hour.between?(0, 11)
        resp.write "Good Morning!"
      elsif Time.now.hour.between?(12, 17)
        resp.write "Good Afternoon."
      else
        resp.write "Good Evening!"
      end
#end response
       resp.finish
end

end
