class SearchController < ApplicationController
  def index
    @search = Mix.search(params[:q])
    @mixes = @search.result
    @search.build_condition
  end

  def show
    if params[:tag]
      @mixes = Mix.tagged_with(params[:tag])
    else
      @mixes = Mix.all
    end
  end
end
