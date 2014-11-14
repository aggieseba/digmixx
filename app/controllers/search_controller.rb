class SearchController < ApplicationController
  def index
    @search = Mix.search(params[:q])
    @mixes = @search.result
    @search.build_condition
    @mood = Tag.where(category: "mood")
    @genre = Tag.where(category: "genre")
    @mix = Mix.where("mixname LIKE ?", "%#{params[:mixname]}")
    @mix = @mix.where("content LIKE ?", "%#{params[:content]}")
  end

  def show
    @mood = Tag.where(category: "mood")
    @genre = Tag.where(category: "genre")
    @tags = Tag.find(params[:id])
  end
end
