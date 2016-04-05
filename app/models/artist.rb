class Artist

  attr_accessor :name

  def self.all
    ChaimzService.new.artists.map {|artist| Artist.new(artist)}
  end

  def initialize(artist_hash)
    @name = artist_hash[:name]
  end

end
