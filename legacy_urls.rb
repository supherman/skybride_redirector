require 'yaml'

class LegacyUrls
  attr_reader :urls

  def initialize file_location = File.expand_path('legacy_urls.yml')
    parse_file file_location
  end

  def new_path old_path
    @urls[old_path]
  end

  private

  def parse_file file_location
    @urls ||= YAML.load_file(file_location)
  end
end
