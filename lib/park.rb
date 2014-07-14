class Park

  def initialize(parks)
    @parks = parks
  end

  def index_by_id
    new_park = {}
   @parks.each { |parks_hashes|
    new_park[parks_hashes[:id]] = parks_hashes }
    new_park
  end

  def index_by_country
    @parks.group_by { |parks_hashes| parks_hashes[:country] }
  end

end

