class ChaimzService
  def initialize
    @headers = {"Authorization" => "Bearer 35148ad62db32ff044d6df2cd57"}
    @host = "https://my-chaimz.herokuapp.com/api/v1"
  end

  def get(path)
    parse(HTTParty.get(@host + path + ".json", headers: @headers).body)
  end

  def artists
    get("/artists")
  end

  private

    def parse(json_string)
      JSON.parse(json_string, symbolize_names: true)
    end


end
