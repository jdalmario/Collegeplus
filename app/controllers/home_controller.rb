class HomeController < ApplicationController

  # GET /
  def index
  	@subscription = Subscription.new
  end

  def about

  end
end
