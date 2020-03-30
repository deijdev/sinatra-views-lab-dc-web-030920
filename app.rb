class App < Sinatra::Base

	resp = Rack::Response.new
	# req = Rack::Request.new

	get '/' do
		erb :index
	end

	get '/hello' do
		resp.status = 200 
		erb :hello
	end

	get '/goodbye' do
		resp.status = 200 
		@name = "Joe"
		erb :goodbye
	

	end

	get '/date' do 
		resp.status = 200 
		@date = Date.today.strftime("%A, %B %d, %Y")
		erb :date  
		# else
		# resp.status = 400
		# "Your application is not responding to GET /date. Did you create that route?"
	end
end

