class Application
    
    def call(env)
        response = Rack::Response.new
        time_hour = Time.now.hour

        if time_hour > 12
            response.write "Good Afternoon!"
        else
            response.write "Good Morning!"
        end
        response.finish
    end

end