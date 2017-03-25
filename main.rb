require File.expand_path('../sneakersnstuff/config', __FILE__)

user_cookie = 'DZdwFQTxaApjKVjliDbwZ30u56NUBr1Mh5LzGYss1GbelnMZ1riEkwd8pjZEqGDS3QNCPreibCubrWVC4RziIKRgNXNXH9tstxSVGCcWWfZ2Nab5'
product_id = '183023'

sstuff = Tap::V2::Sneakersnstuff.new(user_cookie)
sstuff.add_to_shipping_cart(product_id)