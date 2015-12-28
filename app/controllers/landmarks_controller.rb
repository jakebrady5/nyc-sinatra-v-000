require 'pry'

class LandmarksController < ApplicationController

  get '/landmarks' do
    @all = Landmark.all
    erb :index
  end

  get '/landmarks/new' do
    erb :new
  end

  post '/landmarks/new' do 
    @landmark = Landmark.new(params[:name], params[:year])
    @landmark.save
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :show
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :edit
  end

  post '/landmarks/:id/edit' do
    @landmark = Landmark.find_by_id(params[:id])
    @landmark.name = params[:name]
    @landmark.year_completed = params[:year_completed]
    @landmark.save
    redirect "/landmarks/#{params[:id]}"
  end

end
