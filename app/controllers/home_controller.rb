class HomeController < ApplicationController
  def index
    @mixes = Mix.all
  end

  def show
  end

  def controller_params
    params.require(:controller).permit(:hoge, :fuga, :tag_list)
  end

end
