#encoding: utf-8

Given(/^I inform "([^"]*)" cep by post office API$/) do |cep|
  @address = HTTParty.get('http://correiosapi.apphb.com/cep/' + cep)
end

When(/^I receive the response "([^"]*)"$/) do |code|
  code = code.to_i
  expect(@address.code).to eql code
end

Then(/^I should see the "([^"]*)" with "([^"]*)"$/) do |field, result|
  @address.each_pair do |key, value|
    case key
    when field
        expect(value).to eql result
    end
  end
end

Then(/^I should see "([^"]*)" content$/) do |message|
  response = JSON.parse(@address.body)
  expect(response).to have_content message
end
