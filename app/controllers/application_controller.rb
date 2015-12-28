class ApplicationController < Sinatra::Base

  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/landmarks/") }
  register Sinatra::Twitter::Bootstrap::Assets
end
