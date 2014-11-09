class SearchController < ApplicationController
  def index
<<<<<<< HEAD
    @search = Mix.search(params[:q])
    @mixes = @search.result
    @search.build_condition
=======
>>>>>>> f26ea3be5202ecfe5f89bd5fe5984ed8f9dfa5d8
  end

  def show
    if params[:tag]
      @mixes = Mix.tagged_with(params[:tag])
<<<<<<< HEAD
=======
      @result = @mixes.name
>>>>>>> f26ea3be5202ecfe5f89bd5fe5984ed8f9dfa5d8
    else
      @mixes = Mix.all
    end
  end
<<<<<<< HEAD

  private
  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end
=======
>>>>>>> f26ea3be5202ecfe5f89bd5fe5984ed8f9dfa5d8
end
