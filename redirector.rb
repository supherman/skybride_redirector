class Redirector
  attr_reader :legacy_urls, :host

  def initialize legacy_urls, host
    @legacy_urls, @host = legacy_urls, host
  end

  def call env
    new_path = legacy_urls.new_path(env["PATH_INFO"])
    new_url  = URI::HTTP.build(host: host, path: new_path)
    [301, { "Location" => new_url.to_s }, self]
  end
end
