Given(/^I calculate a factorial of (\d+)$/) do |number|
  @factorial = Factorial.calculate(number)
end

Then(/^The factorial should be calculated as (\d+)$/) do |answer|
  expect(@factorial).to eq(answer)
end

Then(/^The calculated factorial should be (\d+)$/) do |factorial|
  expect(@factorial).to eq(factorial)
end

Then(/^I should get an ArgumentError$/) do
  p 'Hi'
end

Given(/^I calculate the factorial of an ([-+]?[\w\d]+)$/) do |invalid_number|
  @invalid_number = invalid_number
end

Then(/^Calculating its factorial should raise an ArgumentError$/) do
  expect{ Factorial.calculate(@invalid_number)}.to raise_error(StandardError, /Factorial can be calculated for only numbers greater than 0/)
end