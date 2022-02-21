class ApplicationController < ActionController::Base
  def current_user
    Users.take
  end
end
