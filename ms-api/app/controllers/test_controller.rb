class TestController < ApplicationController

  def show
    hello = Hello.new
    hello.print('Rob', 'Jones')

    # user = User.find(2)

    render json: { hello: 'now' }, status: 200
  end

  def create
    hello = request["hello"]
    puts "hello: #{ hello }"

    render json: { message: "#{ hello }"}, status: 201
  end

  def apiCheck
    url = "https://www.nfcideas.com/api/check"
    response = HTTP.get(url)

    obj = response.body
    json = JSON.parse(response)

    render json: { env: json['env'], uptime: json['uptime'], now: json['now'], db: json['db'], svr: json['svr'] } , status: 200
  end

end
