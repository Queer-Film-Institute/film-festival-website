class FestivalController < ApplicationController
  include EventSortable
  include EventFilterable

  CURRENT_FESTIVAL = 'festival-2023'

  def index
    get_festival
  end

  def show
    get_festival(params[:id])
    render :index
  end

  private

  def get_festival(slug=CURRENT_FESTIVAL)
    check_preview_api
    @series = Series.find_by(slug: slug).first()
    @all_events = Event.find_by_series_slug slug
    @events = filter_events(@all_events)
    @events = sort_events(@events)

    @sort_options = sort_options
    @filters = filters
  end
end
