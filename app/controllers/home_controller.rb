class HomeController < ApplicationController
  def index
    @mixes = Mix.all
    @mood = Tag.where(category: "mood")
    @genre = Tag.where(category: "genre")
  end

  def show
    @search = Mix.search(params[:q])
    @mixes = @search.result
    
    @mood = Tag.where(category: "mood")
    @genre = Tag.where(category: "genre")
  end

  def controller_params
    params.require(:controller).permit(:hoge, :fuga, :tag_list)
  end

end
