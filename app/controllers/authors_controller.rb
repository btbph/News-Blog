class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    #@tmp = FactoryGirl.create(:author)
  end

  def show

  end

end
