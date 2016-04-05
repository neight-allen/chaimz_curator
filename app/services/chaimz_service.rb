class ChaimzService
  def initialize
    @headers = {"Authorization" => "Bearer 35148ad62db32ff044d6df2cd57"}
    @host = "https://my-chaimz.herokuapp.com/api/v1"
  end

  def artists
    HTTParty.get(@host + "/artists.json", headers: @headers)
  end
end
