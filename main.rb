require File.expand_path('../sneakersnstuff/config', __FILE__)

user_cookie = 'jgg6mW0iwLCHLVfGCzoXdjreiODAixC3fPTKrzBYRGz6AxYGxYwHmLjMiPT67TAn4z/7Jsq6XDvV5IGPFBjjHxaTGsUv1O4u6FDNIvV5GfcFhnNp'
csrf_token = '6fb65cb4164f448fa0d8198f7778a78b'

product_id = '183023'

sstuff = Tap::V2::Sneakersnstuff.new(user_cookie)
sstuff.add_to_shipping_cart(product_id, csrf_token)