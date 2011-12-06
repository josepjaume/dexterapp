class EpisodeFile
  extend ActiveModel::Naming

  def self.create(params={})
    parser = Dexter::Parser.new
    result = parser.parse(params[:name])
    show = Show.create(name: result[:show].to_s)
    new(show)
  end

  def initialize(show)
    @show = show
  end

  def as_json(*)
    { show: @show }
  end
end
