module Tap
  module V2
    class Sneakersnstuff < Tap::Sneakersnstuff::Base
      def add_to_shipping_cart(product_id)
        agent = Mechanize.new
        agent.user_agent_alias = 'Mac Safari'
        agent.cookie_jar << Mechanize::Cookie.new(
          domain: 'www.sneakersnstuff.com', path: '/', name: 'png.state',
          value: @user_cookie)

        agent.post('http://www.sneakersnstuff.com/en/cart/add', [
            %w(_AntiCsrfToken c8d31986fae34ee2a7805ce5c1c63456),
            %w(partial cart-summary),
            %W(id #{product_id})
          ]
        )
      end
    end
  end
end