class HomeController < ApplicationController
  def index
    @mixes = Mix.order(params[:direction] && params[:sort])
    @mixes = @mixes.order(id: :desc)
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

  private
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

  def sort_column
    Mix.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end



end
