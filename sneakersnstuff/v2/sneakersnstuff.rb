module Tap
  module V2
    class Sneakersnstuff < Tap::Sneakersnstuff::Base
      def add_to_shipping_cart(product_id, csrf_token)
        agent = Mechanize.new
        agent.user_agent_alias = 'Mac Safari'
        agent.cookie_jar << Mechanize::Cookie.new(
          domain: 'www.sneakersnstuff.com', path: '/', name: 'png.state',
          value: @user_cookie)

        agent.post('http://www.sneakersnstuff.com/en/cart/add', [
            %W(_AntiCsrfToken #{csrf_token}),
            %w(partial cart-summary),
            %W(id #{product_id})
          ]
        )
      end
    end
  end
end