class WelcomeController < ApplicationController
  def index
  end

  def console
  end

  def error
    Use.find(1)
  end
end
