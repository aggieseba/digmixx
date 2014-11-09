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

  private
  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
