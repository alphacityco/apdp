Expedia.setup do |config|
	config.cid = 456201 # your cid once you go live.
	config.api_key = 'v7nb7mem245jzgyaw8trdhmg'
	config.shared_secret = 'Zw8QMMyx'
	config.locale = 'es' # 'en_US' # For Example 'de_DE'. Default is 'en_US'
	config.currency_code = 'USD' # For Example 'EUR'. Default is 'USD'
	config.minor_rev = 13 # between 4-19 as of Dec 2012. Default is 4. 19 being latest
end
