class Artist < OpenStruct

  def self.service
    ChaimzService.new
  end

  def self.all
    service.artists.map {|artist| Artist.new(artist)}
  end

  def self.find(id)
    Artist.new(service.artist(id))
  end

  # def save
  #   if self.id.nil?
  #     Artist.create(self)
  #   else
  #     Artist.service.update_artist(self)
  #   end
  # end

  def self.create(artist_params)
    artist = Artist.new(artist_params)
    artist_hash = service.create_artist(artist)
    Artist.new(artist_hash)
  end

  # def update(artist_params)
  #   artist_params.each { |key, value| self[key] = value}
  #   Artist.service.update_artist(artist)
  # end

end
