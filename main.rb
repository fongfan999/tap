require 'watir'
require File.expand_path('../sneakersnstuff/sneakersnstuff', __FILE__)

product_url = 'http://www.sneakersnstuff.com/en/product/27600/adidas-stan-smith-boost'
user_cookie = 'XciKA+ncV2N6AZXbw4+MhVgHdbSRfya2R7PiDSLh1M/6eCy/D8LBntPD7nAEREltLTIzpnuV4rgWaOI/hfuPgQ5+46uuyMvuO4QxQYoeYYVpIgVQ'

sstuff = Tap::Sneakersnstuff.new(user_cookie)
sstuff.add_to_cart(product_url)