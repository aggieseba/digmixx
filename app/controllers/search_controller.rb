class SearchController < ApplicationController
  def index
  end

  def show
    if params[:tag]
      @mixes = Mix.tagged_with(params[:tag])
      @result = @mixes.name
    else
      @mixes = Mix.all
    end
  end
end
