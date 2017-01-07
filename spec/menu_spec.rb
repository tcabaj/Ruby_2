require 'simplecov'
SimpleCov.start

require 'menu'

RSpec.describe 'menu.rb' do
  obj = Menu.new

  it 'should not raise error' do
    expect { obj.to_s }.not_to raise_error
  end
end
