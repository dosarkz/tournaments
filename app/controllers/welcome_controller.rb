class WelcomeController < ApplicationController
  def index
    @tournaments = Tournament.all
  end
end
