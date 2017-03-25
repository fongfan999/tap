module Tap
  class Sneakersnstuff
    def initialize(user_cookie)
      @user_cookie = user_cookie
    end
    
    def add_to_cart(product_url)
      browser = Watir::Browser.start product_url
      browser.cookies.clear
      browser.cookies.add "png.state", @user_cookie,
        expires: Time.now + (2*7*24*60*60)
      availabel_sizes = 
        browser.elements(css: '.product-size-container .size-button')
      if selected_size = availabel_sizes.find { |s| s.text =~ /8\.5|8|9\.5/ }
        selected_size.click
      else
        availabel_sizes.first.click
      end
      browser.link(css: '#add-to-cart').click
      Watir::Wait.until { browser.text =~ /Checkout|out of stock/ }
      browser.quit
    end
  end
end