require 'sinatra'
require_relative 'ttt.rb'
enable :sessions

get '/' do
	erb :home	
end

post '/play' do
	session[:a1] = params[:a1]
	session[:a2] = params[:a2]
	session[:a3] = params[:a3]
	session[:a4] = params[:a4]
	session[:a5] = params[:a5]
	session[:a6] = params[:a6]
	session[:a7] = params[:a7]
	session[:a8] = params[:a8]
	session[:a9] = params[:a9]
	redirect '/play'
end

get '/play' do
	a1 = session[:a1]
	a2 = session[:a2]
	a3 = session[:a3]
	a4 = session[:a4]
	a5 = session[:a5]
	a6 = session[:a6]
	a7 = session[:a7]
	a8 = session[:a8]
	a9 = session[:a9]
	if    a1 == "O"
	      a1 = "O"
	elsif a1 == """"
		  a1 = """"
	else a1 = "X"
	end
	if a2 == "O"
		a2 = "O"
	elsif a2 == """"
		a2 = """"
	else a2 = "X"
	end
	if a3 == "O"
		a3 = "O"
	elsif a3 == """"
		a3 = """"
	else a3 = "X"
	end
	if a4 == "O"
<<<<<<< HEAD
			a4 = "O"
		elsif a4 == """"
			a4 = """"
		else a4 = "X"
		end
=======
		a4 = "O"
	elsif a4 == ""
		a4 = ""
	else a4 = "X"
	end
>>>>>>> 7ea6937b628cca9f20865b5876a414a384778582
	if a5 == "O"
		a5 = "O"
	elsif a5 == ""
		a5 = ""
	else a5 = "X"
	end
	if a6 == "O"
<<<<<<< HEAD
			a6 = "O"
		elsif a6 == ""
			a6 = ""
		else a6 = "X"
		end
	if a7 == "O"
			a7 = "O"
		elsif a7 == ""
			a7 = ""
		else a7 = "X"
		end
=======
		a6 = "O"
	elsif a6 == ""
		a6 = ""
	else a6 = "X"
	end
>>>>>>> 7ea6937b628cca9f20865b5876a414a384778582
	if a8 == "O"
		a8 = "O"
	elsif a8 == ""
		a8 = ""
	else a8 = "X"
	end
	if a9 == "O"
		a9 = "O"
	elsif a9 == ""
		a9 = ""
	else a9 = "X"
	end
	random = plays_random(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	puts "random is #{random}"
	puts random.class
	if random == "a1"
		a1 = "O"
	elsif random == "a2"
		a2 = "O"
	elsif random == "a3"
		a3 = "O"
	elsif random == "a4"
		a4 = "O"
	elsif random == "a5"
		a5 = "O"
	elsif random == "a6"
		a6 = "O"
	elsif random == "a7"
		a7 = "O"
	elsif random == "a8"
		a8 = "O"
	elsif random == "a9"
		a9 = "O"
	end
<<<<<<< HEAD
	puts a1, a2, a3, a4, a5, a6, a7, a8, a9
	erb :play, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4, :a5 => a5, :a6 => a6, :a7 => a7, :a8 => a8, :a9 => a9}
end
=======
	erb :play, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4, :a5 => a5, :a6 => a6, :a7 => a7, :a8 => a8, :a9 => a9,}
end
>>>>>>> 7ea6937b628cca9f20865b5876a414a384778582
