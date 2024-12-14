class SearchController < ApplicationController
  def search
    if params[:query].present? 
      @ideas = Idea.search(params[:query]) 
    else 
      @ideas = Idea.all
    end
  end
end
