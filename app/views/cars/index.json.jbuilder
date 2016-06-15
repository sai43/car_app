json.array!(@cars) do |car|
  json.extract! car, :id, :make, :year, :color, :wheels, :doors
  json.url car_url(car, format: :json)
end
