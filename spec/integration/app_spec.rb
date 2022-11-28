require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
let(:app) { Application.new }

# GET /

context "GET /" do
  it "returns 200 OK" do
    response = get('/')

    expect(response.status).to eq(200)
    expect(response.body).to eq('Hello!')
  end

context "GET /hello" do
  it "should return 'Hello Leo!'" do
    response = get('/hello?name=Leo')

    expect(response.status).to eq(200)
    expect(response.body).to eq ("Hello Leo!")
  end

  it "should return 'Hello Josh!" do
    response = get('/hello?name=Josh')

    expect(response.status).to eq(200)
    expect(response.body).to eq("Hello Josh!")
  end

context "GET /names" do
  it "returns the specified names" do
  response = get('/names?name_1=Julia&name_2=Mary&name_3=Karim')
  
  expect(response.status).to eq(200)
  expect(response.body).to eq("Julia, Mary, Karim")
  end
  
context "POST /sort-names" do
  it "returns an alphabetical list of names" do
  response = post('/sort-names', names: 'Joe,Keiran,Zoe,Alice,Julia')

  expect(response.status).to eq(200)
  expect(response.body).to eq("Alice,Joe,Julia,Keiran,Zoe")
  end





  
end
end
end
end
end