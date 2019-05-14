class SayController < ApplicationController
  def hello
    @time = Time.now
    @hey = 'World'
  end

  def goodbye
    @bye = "It was nice having your here"
  end
end
