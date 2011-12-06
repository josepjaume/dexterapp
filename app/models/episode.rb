class Episode
  include DataMapper::Resource

  property :show, String, key: true
  property :season, Integer, key: true
  property :episode, Integer, key: true

  def self.parse(string)
    parser = Dexter::Parser.new
    parsed = parser.parse(string)
    create(
      show: parsed[:show].to_s,
      episode: parsed[:episode].to_i,
      season: parsed[:season].to_i
    )
  end

end
