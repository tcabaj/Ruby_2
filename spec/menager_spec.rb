require 'simplecov'
SimpleCov.start
require 'manager'
RSpec.describe 'manager.rb' do
  obj = Manager.new

  it 'should add new film' do
    expect { obj.add_muzyka('Some', 'Anonim', '2017') } .not_to raise_error
  end

  it 'should output all films' do
    expect { obj.list_muzyka } .not_to raise_error
  end

  it 'should edit film' do
    expect { obj.update_muzyka(1, 'Some', 'Gall', '2017') } .not_to raise_error
  end

  it 'should delete film' do
    expect { obj.delete_muzyka(1) } .not_to raise_error
  end

  it 'should get class variable' do
    expect { Manager.muzyka }.not_to raise_error
  end
end
