class Weather
  attr_reader :date, :low_temp, :high_temp, :cloud_coverage, :feels_like, :humidity, :percipitation_probability, :visibility, :weather, :weather_description, :weather_icon, :wind_direction, :wind_gust, :wind_speed, :error


  def initialize(data)
    unless data.class == String
      @date = data[:date]
      @low_temp = data[:weather][:low_temp]
      @high_temp = data[:weather][:high_temp]
      @cloud_coverage = data[:weather][:cloud_coverage]
      @feels_like = data[:weather][:feels_like]
      @humidity = data[:weather][:humidity]
      @percipitation_probability = data[:weather][:percipitation_probability]
      @visibility = data[:weather][:visibility]
      @weather = data[:weather][:weather]
      @weather_description = data[:weather][:weather_description]
      @weather_icon = data[:weather][:weather_icon]
      @wind_direction = data[:weather][:wind_direction]
      @wind_gust = data[:weather][:wind_gust]
      @wind_speed = data[:weather][:wind_speed]
    else
      @error = data
    end
  end
end
