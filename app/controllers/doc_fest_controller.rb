class FestivalController < ApplicationController
  include EventSortable
  include EventFilterable

  DOCUMENTARY_FESTIVAL = "Doc Fest"
  CURRENT_FESTIVAL = '2022'

  def index
      get_festival(festival: DOCUMENTARY_FESTIVAL)
  end

  def show
      get_festival(year: params[:id], festival: DOCUMENTARY_FESTIVAL)
      render :index
  end
end
