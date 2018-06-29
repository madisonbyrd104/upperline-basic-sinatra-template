require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
 configure do
   set :public_folder, 'public'
   set :views, 'app/views'
 end

 get '/' do
   return erb :index
 end
post '/input' do
 
   @answers = GPA.new(params)
   @answers.to_f
   @answers.calculate 
   erb :unweighted_results
 end
 
 post '/GPA' do
   erb :unweighted
 end
 
 post '/quiz' do
   erb :quiz
 end

#  post '/results' do
#   @new_answer = Answers.new(params)
#   @new_answer.answer
#   p @new_answer.answer
#   erb :results #GPA
#  end

 post '/quiz_results' do
     @new_answer = Answers.new(params)
     @new_answer.answer
     p @new_answer.answer
     erb :quiz_results
 end
 
 
 post '/index' do
   erb :index
 end
 
end