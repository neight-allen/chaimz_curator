class ChaimzService
  def initialize
    @headers = {"Authorization" => "Bearer 35148ad62db32ff044d6df2cd57"}
    @host = "https://my-chaimz.herokuapp.com/api/v1"
  end

  def get(path)
    parse(HTTParty.get(@host + path + ".json", headers: @headers).body)
  end

  def post(path, params)
    parse(HTTParty.post(@host + path + ".json?" + params.to_query, headers: @headers).body)
  end

  def delete(path)
    parse(HTTParty.delete(@host + path + ".json", headers: @headers).body)
  end

  def artists
    get("/artists")
  end

  def artist(id)
    get("/artists/#{id}")
  end

  def create_artist(artist)
    post("/artists", artist.to_h)
  end

  def destroy_artist(artist)
    delete("/artists/#{artist.id}")
  end

  private

    def parse(json_string)
      JSON.parse(json_string, symbolize_names: true)
    end


end
