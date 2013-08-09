require './redirector'
require './legacy_urls'

run Redirector.new LegacyUrls.new, 'stage.skybride.com'
