class PagesController < ApplicationController
  def landing
  end

  def uptime
  end

  def random
    @random = Random.rand(1..255)
    render :text => @random
  end
end
