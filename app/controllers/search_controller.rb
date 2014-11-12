class SearchController < ApplicationController
  def index
    @search = Mix.search(params[:q])
    @mixes = @search.result
    @search.build_condition
    @mood = Tag.where(category: "mood")
    @genre = Tag.where(category: "genre")
  end

  def show
    if params[:tag]
      @mixes = Mix.tagged_with(params[:tag])
    else
      @mixes = Mix.all
    end
  end
end
