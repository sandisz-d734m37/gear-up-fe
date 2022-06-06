class TripFacade
  def self.get_trip_by_id(id)
    trip_data = TripService.get_trip_by_id(id)[:data]

    trip_data[:attributes][:id] = trip_data[:id]
    Trip.new(trip_data)
  end

  def self.trips_by_user_id(id)
    trip_data = TripService.trips_by_user_id(id)[:data]
    if trip_data
      trip_data.map do |trip|
        trip[:attributes][:id] = trip[:id]
        Trip.new(trip[:attributes])
      end
    end
  end
end