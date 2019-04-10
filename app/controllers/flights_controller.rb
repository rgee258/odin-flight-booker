class FlightsController < ApplicationController
  # https://stackoverflow.com/questions/5943872/find-records-with-datetime-that-match-todays-date-ruby-on-rails
  # https://stackoverflow.com/questions/13211916/rails-activerecord-find-search-by-date
  def index
    # Query all of the distinct flights based on date saving them in options_for_select format
    all_dates = Flight.select(:date).distinct.order('date').map{ |f| [f.date_display_formatted, f.date] }
    # Then remove all of the view formatted dates without time that contain the same date to remove dupes
    @flight_dates = all_dates.uniq { |d| d.first }

    if params.has_key?(:to)
      @flights = Flight.where(to_id: params[:to], from_id: params[:from], date: params[:date].to_datetime.
        beginning_of_day..params[:date].to_datetime.end_of_day)
    else
      @flights = nil
    end
  end
end
