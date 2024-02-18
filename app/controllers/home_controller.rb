class HomeController < ApplicationController
  def index
    @children = Child.includes(:user, :task_lists, :gifts, :finances)


  end

  def terms
  end

  def privacy
  end

  private def grid_params
    params.fetch(:home_grid, {}).permit!
  end
end
