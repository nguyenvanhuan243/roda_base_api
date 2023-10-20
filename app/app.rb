require 'roda'
require 'json'

class MyAPI < Roda
  plugin :json
  plugin :all_verbs

  route do |r|
    r.on 'api' do
      r.is 'hello' do
        {
            message: 'Ruby on rails',
            status: 200
        }
      end
    end
  end
end
