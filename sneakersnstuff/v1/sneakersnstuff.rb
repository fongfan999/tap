module Tap
  module V1
    class Sneakersnstuff < Tap::Sneakersnstuff::Base
      def add_to_shipping_cart(product_url, product_size = 8.5)
        browser = Watir::Browser.start product_url
        browser.cookies.clear
        browser.cookies.add "png.state", @user_cookie,
          expires: Time.now + (2*7*24*60*60)

        available_sizes = 
          browser.elements(css: '.product-size-container .size-button')
        if size_btn = available_sizes.find { |s| s.text =~ /#{product_size}/ }
          size_btn.click
          browser.link(css: '#add-to-cart').click
          Watir::Wait.until { browser.text =~ /Checkout|out of stock/ }
        end
        
        browser.quit
      end
    end
  end
end