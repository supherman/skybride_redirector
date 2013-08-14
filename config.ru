require './redirector'
require './legacy_urls'

run Redirector.new LegacyUrls.new, 'skybride-prod.herokuapp.com'
